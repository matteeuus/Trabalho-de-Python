# instalar conectador para o Banco de dados: pip install mysql-connector-python
import tkinter as tk
import a as pdfs
from tkinter import ttk
from tkinter import messagebox
import inspect
from mysql.connector import (connection)



class Window():
    data = []

    dataInsert = {
        'Nome':'',
        'Telefone':'',
        'Email':'',
        'Minibio':'',
        'Entrevista':'',
        'Teorico':'',
        'Pratico':'',
        'Soft_Skills':''
    }

    procurar = {
        'Entrevista':'',
        'Teorico':'',
        'Pratico':'',
        'Soft_Skills':''
    }
    formated2 = ['Nome','Entrevista','Teorico','Pratico','Soft Skills']
    formated = ['id', 'Nome', 'Telefone', 'Email', 'Minibio', 'Entrevista', 'Teorico', 'Pratico', 'Soft_Skills']

    def __init__(self, Dimensao):
        self.__db_conn = connection.MySQLConnection(host='localhost',user='root',password='',database='entrevista')
        self.cursor = self.__db_conn.cursor()
        self.janela = tk.Tk()
        self.janela.iconbitmap('./BlocoEntrevista.ico')
        self.janela.geometry(Dimensao)
        self.janela.title('BlocoEntrevista')
        self.frame = tk.Frame(self.janela)
        self.frame.pack(side="left", expand=True, fill="both", padx=4)
        self.frame['bg'] ='grey'
        self.menu = tk.Menu(self.janela, font=15)
        self.optionsMenu = tk.Menu(self.menu, tearoff=1)
        self.optionsMenu.add_command(label="Adicionar Novo Entrevistado", command=self.janelaInsert)
        self.optionsMenu.add_command(label="Listar Entrevistados Cadastrados",command=self.start)
        self.optionsMenu.add_separator()
        self.optionsMenu.add_command(label="Fechar", command=self.janela.quit)
        self.menu.add_cascade(label="Opções", menu=self.optionsMenu)
        self.janela.config(menu=self.menu)
        self.listar()
        self.start()

    def listar(self):
        self.cursor.execute('SELECT * FROM entrevistados')
        data = self.cursor.fetchall()
        formated_data = []
        sub_formated_data = {}
        for item in data:
            sub_formated_data = {}
            num = 0
            for i in item:
                sub_formated_data[self.formated[num]] = i
                num+=1
            formated_data.append(sub_formated_data)
        self.data = formated_data

    def Pegar(self):
        dadosSelecionados = []
        sql = 'SELECT Nome, Entrevista, Teorico, Pratico, Soft_Skills FROM entrevistados WHERE '
        for item in self.procurar.keys():
            if(self.procurar[item].get() != ''):
                if(type(self.whatType(self.procurar[item].get())) is int):
                    entry.append((self.procurar[item].get(), item))
                else:
                    raise Exception(f'Os dados do Campo {item} Não é Um numero inteiro. ')
        time = entry[-1]
        for item in range(len(entry)):
            if(entry[item] == time):
                sql = sql + "( "+str(entry[item][1]) + " BETWEEN " + str(entry[item][0]) + ' AND 10 )'
            else:
                sql = sql + "( " + str(entry[item][1]) + " BETWEEN " + str(entry[item][0]) + ' AND 10 ) AND '
        return sql

    def insert(self, table, nameofdata):
        try:
            dataD = getattr(self, nameofdata)
            sql = self.createSql(table,dataD)
            temp = {}
            for item in dataD.keys():
                temp[item] = dataD[item].get()
            self.data.append(temp)
            self.cursor.execute(sql)
            self.__db_conn.commit()
            self.listar()
            self.start()
            self.alerta('Sucesso ao Inserir','Inserir',True)
        except Exception as e:
            self.alerta(e,'insert')
    
    def criarPDFOnlyNotas(self):
        pdfs.criar(self.data)

    def listarALista(self):
        self.txt.configure(state='normal')
        num = 1
        dados = self.data
        for item in dados:
            message = ''
            for i in item.keys():
                if(type(item[i] is int)):
                    message+=f' {i} - {str(item[i])} |'
                else:
                    message+=f' {i} - {item[i]} |'
            num+=2
            self.txt.insert(str(float(num)),message+'\n')
            self.txt.insert(str(float(num+1)),'------------------------------------------------------------------------------------------------')
        self.txt.config(state='disabled')
        self.txt.pack(side='top',fill='x')

    def deleteSelect(self):
        self.txt.configure(state='normal')
        num = self.txt.index('end')
        if(float(num) > 0.0):
            for item in range(int(float(num))):
                self.txt.delete(str(float(item)), "end-1c")
        self.txt.configure(state='disabled')

    def start(self):
        try:
            self.destros()
            self.listar()
            text2 = tk.Label(self.frame,text='Seja bem vindo, ao BlocoEntrevista Para realizar alguma operação use o menu no canto superior esquerdo')
            text2.pack(pady=3)
            lista = tk.Frame(self.frame)
            lista.pack(side="top", expand=False, fill="both")
            scroll = tk.Scrollbar(lista)
            scroll.pack(side = 'right', fill = 'y')
            self.txt = tk.Text(lista,yscrollcommand=scroll.set,width=10,height=20,pady=9, wrap='word')
            self.listarALista()
            scroll.config(command=self.txt.yview)

            frameCadastro = tk.Frame(self.frame, height=100)
            frameCadastro.pack(side="bottom", expand=True, fill="both", padx=4, )

            self.framesLeft = tk.Frame(frameCadastro)
            self.framesLeft.pack(side="left", expand=True, fill="both", padx=4)

            self.framesRight = tk.Frame(frameCadastro)
            self.framesRight.pack(side="right", expand=True, fill="both", padx=4)

            
            text1 = tk.Label(self.framesRight,text='Entrevista')
            text1.pack(pady=1)
            self.procurar['Entrevista'] = tk.Entry(self.framesRight)
            self.procurar['Entrevista'].pack(pady=2)

            text2 = tk.Label(self.framesRight,text='Teorico')
            text2.pack(pady=3)
            self.procurar['Teorico'] = tk.Entry(self.framesRight)
            self.procurar['Teorico'].pack(pady=4)

            text3 = tk.Label(self.framesLeft,text='Pratico')
            text3.pack(pady=1)
            self.procurar['Pratico'] = tk.Entry(self.framesLeft)
            self.procurar['Pratico'].pack(pady=2)

            text4 = tk.Label(self.framesLeft,text='Soft_Skills')
            text4.pack(pady=3)
            self.procurar['Soft_Skills'] = tk.Entry(self.framesLeft)
            self.procurar['Soft_Skills'].pack(pady=4)

            btn = tk.Button(self.framesLeft, text='Filtrar', command=self.filtro)
            btn.pack(pady=50)

        except Exception as e:
            self.alerta(e,'start')

    def destros(self):
        for widgets in self.frame.winfo_children():
            widgets.destroy()

    def createPDFButton(self):
        btn1 = tk.Button(self.framesRight, text='Criar PDF', command=self.criarPDFOnlyNotas)
        btn1.pack(pady=50)
        btn2 = tk.Button(self.framesRight, text='Criar PDF inteiro', command=self.filtro)
        btn2.pack(pady=60)

    def filtro(self):
        entry = []
        sql = 'SELECT Nome, Entrevista, Teorico, Pratico, Soft_Skills FROM entrevistados WHERE '
        for item in self.procurar.keys():
            if(self.procurar[item].get() != ''):
                if(type(self.whatType(self.procurar[item].get())) is int):
                    entry.append((self.procurar[item].get(), item))
                else:
                    raise Exception(f'Os dados do Campo {item} Não é Um numero inteiro. ')
        time = entry[-1]
        for item in range(len(entry)):
            if(entry[item] == time):
                sql = sql + "( "+str(entry[item][1]) + " BETWEEN " + str(entry[item][0]) + ' AND 10 )'
            else:
                sql = sql + "( " + str(entry[item][1]) + " BETWEEN " + str(entry[item][0]) + ' AND 10 ) AND '
        self.cursor.execute(sql)
        data = self.cursor.fetchall()
        formated_data = []
        sub_formated_data = {}
        for item in data:
            sub_formated_data = {}
            num = 0
            for i in item:
                sub_formated_data[self.formated2[num]] = i
                num+=1

            formated_data.append(sub_formated_data)
        self.data = formated_data

        self.deleteSelect()
        self.listarALista()
        self.createPDFButton()

    def Input(self, pad):

        inputs_entry = tk.Entry(self.frame)
        inputs_entry.pack(pady=pad)
        return inputs_entry
    
    def alerta(self, message, where, status = False):
        try:
            if(status):
                messages = tk.messagebox.showinfo('Info: '+where,message)
            else:
                messages = tk.messagebox.showerror('Error in '+where,message)
        except Exception as e:
            messages = tk.messagebox.showerror('erro',e)

    def createSql(self, table, data):
        start = 'INSERT INTO '+table+' ('
        end = ') VALUES ('
        numOfCampos = len(data)
        last = 0
        for item in data.keys():
            last+=1
            if (type(self.whatType(data[item].get())) is int):
                if (last == numOfCampos):
                    start = start+item
                    end = end+str(data[item].get())
                else:
                    start = start+item+', '
                    end = end+str(data[item].get())+', '
            else:
                if (last == numOfCampos):
                    start = start+item
                    end = end+"'"+data[item].get()+"'"
                else:
                    start = start+item+', '
                    end = end+"'"+data[item].get()+"', "

        sql = start + end + ')'
        return sql

    def whatType(self, dados):
        try:
            return int(dados)
        except:
            return str(dados)

    def janelaInsert(self):
        try:
            self.destros()
            text = tk.Label(self.frame,text='CADASTRO DE ENTREVISTADOS')
            text.pack(pady=1)
            num = 1
            frameCadastro = tk.Frame(self.frame)
            frameCadastro.pack(side="botton", expand=True, fill="both", padx=4)
            framesLeft = tk.Frame(frameCadastro)
            framesLeft.pack(side="left", expand=True, fill="both", padx=4)

            framesRight = tk.Frame(frameCadastro)
            framesRight.pack(side="right", expand=True, fill="both", padx=4)

            text1 = tk.Label(framesLeft,text='Nome')
            text1.pack(pady=1)
            self.dataInsert['Nome'] = tk.Entry(framesLeft)
            self.dataInsert['Nome'].pack(pady=2)

            text2 = tk.Label(framesLeft,text='Telefone')
            text2.pack(pady=3)
            self.dataInsert['Telefone'] = tk.Entry(framesLeft)
            self.dataInsert['Telefone'].pack(pady=4)

            text3 = tk.Label(framesLeft,text='Email')
            text3.pack(pady=5)
            self.dataInsert['Email'] = tk.Entry(framesLeft)
            self.dataInsert['Email'].pack(pady=6)

            text4 = tk.Label(framesLeft,text='Minibio')
            text4.pack(pady=7)
            self.dataInsert['Minibio'] = tk.Entry(framesLeft)
            self.dataInsert['Minibio'].pack(pady=8)

            # Right Side

            text1 = tk.Label(framesRight,text='Entrevista')
            text1.pack(pady=1)
            self.dataInsert['Entrevista'] = tk.Entry(framesRight)
            self.dataInsert['Entrevista'].pack(pady=2)

            text2 = tk.Label(framesRight,text='Teorico')
            text2.pack(pady=3)
            self.dataInsert['Teorico'] = tk.Entry(framesRight)
            self.dataInsert['Teorico'].pack(pady=4)

            text3 = tk.Label(framesRight,text='Pratico')
            text3.pack(pady=5)
            self.dataInsert['Pratico'] = tk.Entry(framesRight)
            self.dataInsert['Pratico'].pack(pady=6)

            text4 = tk.Label(framesRight,text='Soft_Skills')
            text4.pack(pady=7)
            self.dataInsert['Soft_Skills'] = tk.Entry(framesRight)
            self.dataInsert['Soft_Skills'].pack(pady=8)
            
            btn = tk.Button(framesLeft, text='Cadastrar', command=lambda: self.insert('entrevistados','dataInsert'))
            btn.pack(pady=50)
        except Exception as e:
            self.alerta(e,inspect.currentframe().f_code.co_name)


janela = Window('800x800')
janela.janela.mainloop()

