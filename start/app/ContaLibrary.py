#Programa para abertura e gerenciamento de uma conta corrente
class ContaLibrary():
    def abrir_conta(self, saldo = 0.0):
        self.saldo = 0.0 
        self.deposita(saldo)

    def obter_saldo(self):
        return self.saldo
    
    def deposita(self, valor):
        self.saldo += valor

    def saca(self, valor):
        self.saldo -= valor
        self.saldo -= 2.0

#Guardando a instância de uma instância
#conta = ContaLibrary()
#conta.abrir_conta()
#conta.deposita(100.00)
#print(conta.obter_saldo())
