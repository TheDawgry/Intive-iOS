import Foundation 

//wanted to save dictionary in another file, but I couldn't test it in online playground
var banks: [Int: String] = [
    1010:	"Narodowy Bank Polski",
    1020:	"PKO BP",
    1030:	"Bank Handlowy (Citi Handlowy)",
    1050:	"ING",
    1060:	"BPH",
    1090:	"BZ WBK",
    1130:	"BGK",
    1140:	"mBank, Orange Finanse",
    1160:	"Bank Millennium",
    1240:	"Pekao",
    1280:	"HSBC",
    1320:	"Bank Pocztowy",
    1470:	"Eurobank",
    1540:	"BOŚ",
    1580:	"Mercedes-Benz Bank Polska",
    1610:	"SGB - Bank",
    1670:	"RBS Bank (Polska)",
    1680:	"Plus Bank",
    1750:	"Raiffeisen Bank",
    1840:	"Societe Generale",
    1870:	"Nest Bank",
    1910:	"Deutsche Bank Polska",
    1930:	"Bank Polskiej Spółdzielczości",
    1940:	"Credit Agricole Bank Polska",
    1950:	"Idea Bank",
    2030:	"BGŻ BNP Paribas",
    2070:	"FCE Bank Polska",
    2120:	"Santander Consumer Bank",
    2130:	"Volkswagen Bank",
    2140:	"Fiat Bank Polska",
    2160:	"Toyota Bank",
    2190:	"DnB Nord",
    2480:	"Getin Noble Bank",
    2490:	"Alior Bank, T-Mobile Usługi Bankowe"
] 

class BankAccount{

    var accountNumber: String
    var bankID: Int
    var bankName: String

    init (accountNumber: String, bankID: Int, bankName: String){
        self.accountNumber = accountNumber
        self.bankID = bankID
        self.bankName = bankName
    }
}

func isNumeric(value: String) -> Bool {
    return Double(value) != nil
}

func checkID(id: Int) -> Bool {
    return banks[id] != nil
}

func numberAnalisis(input: String) ->BankAccount?{
    var nrbNumber: String = input.replacingOccurrences(of: " ", with: "")
    if (nrbNumber.count != 26){
        return nil
    }
    if (!isNumeric(value: nrbNumber)){
        return nil
    }
    let accountNumber = String(nrbNumber.dropFirst(10))
    let bankID: Int! = Int(nrbNumber.dropFirst(2).dropLast(20))

    if (!checkID(id: bankID)){
        return nil
    }
    let bankName = banks[bankID]!
    var account: BankAccount = BankAccount(accountNumber: accountNumber, bankID: bankID, bankName: bankName)
    return account
}

//example input
var account: BankAccount! = numberAnalisis(input: "86 10502498 1111222233334444")