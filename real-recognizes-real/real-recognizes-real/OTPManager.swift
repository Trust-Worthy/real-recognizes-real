//
//  OTP.swift
//  real-recognizes-real
//
//  Created by Trust-Worthy on 7/15/25.
//

import Foundation
import SwiftOTP




struct OTPManager {
    let secret: Data
    let digits: Int
    let timeInterval: TimeInterval
    let algorithm: OTPAlgorithm
    
    
    init?(base32secret: String, digits: Int = 6, timeInterval: TimeInterval = 30, algorithm: OTPAlgorithm = .sha256) {
        
        
        guard let decodedSecret = base32DecodeToData(base32secret) else {
            return nil
        }
        self.secret = decodedSecret
        self.digits = digits
        self.timeInterval = timeInterval
        self.algorithm = algorithm
    }
    
    func currentOTP() -> String? {
        let totp = TOTP(secret: secret, digits: digits, timeInterval: Int(timeInterval), algorithm: algorithm)
        return totp?.generate(time: Date())
    }
    
    
}
// This is a shared secret in base32 (usually stored securely or scanned from a QR code)
let base32secret = "JBSWY3DPEHPK3PXP" // "Hello!" in base32

// Convert the secret to Data
if let data = base32DecodeToData(base32secret) {
    let totp = TOTP(secret: data, digits: 6, timeInterval: 30, algorithm: .sha256)
    
    let now = Date()
    
    if let otpString = totp?.generate(time: now) {
        print("Current OTP: \(otpString)")
    }
}
