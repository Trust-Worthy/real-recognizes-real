//
//  Account.swift
//  real-recognizes-real
//
//  Created by Trust-Worthy on 7/15/25.
//



struct Account {
    var name: String
    var OTP: String
    
    static func getAccounts() -> [Account] {
        let account1 = Account(name: "Alice", OTP: "123456")
        
        let account2 = Account(name:"Bob", OTP: "78999")
        let account3 = Account(name: "Charlie", OTP: "345678")
        let account4 = Account(name: "Delta", OTP: "987654")
        let account5 = Account(name: "Echo", OTP: "112233")
        let account6 = Account(name: "Foxtrot", OTP: "445566")
        let account7 = Account(name: "Golf", OTP: "778899")
        let account8 = Account(name: "Hotel", OTP: "223344")
        let account9 = Account(name: "India", OTP: "556677")
        let account10 = Account(name: "Juliet", OTP: "889900")
        let account11 = Account(name: "Kilo", OTP: "123123")
        let account12 = Account(name: "Lima", OTP: "456456")
        let account13 = Account(name: "Mike", OTP: "789789")
        let account14 = Account(name: "November", OTP: "321321")
        let account15 = Account(name: "Oscar", OTP: "654654")
        let account16 = Account(name: "Papa", OTP: "987987")
        let account17 = Account(name: "Quebec", OTP: "147258")
        let account18 = Account(name: "Romeo", OTP: "369147")
        let account19 = Account(name: "Sierra", OTP: "258369")
        let account20 = Account(name: "Tango", OTP: "159357")

        let allAccounts = [
            account1, account2, account3, account4, account5, account6, account7, account8, account9, account10,
            account11, account12, account13, account14, account15, account16, account17, account18, account19, account20
        ]
        
        return allAccounts
    }
}


