//
//  Errors.swift
//  Baluchon
//
//  Created by Zidouni on 04/05/2023.
//

import Foundation

enum ConverterError : Error {
    case apiKeyNotFound
    case exchangeRateAlreadyAvailable
    case invalidCurrencyParameters
    case unauthorizedAccess
    case networkError
    
    var errorDescription: String {
        switch self {
        case .apiKeyNotFound:
            return "Your APIKey was not found"
        case .exchangeRateAlreadyAvailable:
            return "You already have the exchange rate for this currency"
        case .invalidCurrencyParameters:
            return "Your base currency or convert currency is invalid"
        case .unauthorizedAccess:
            return "Access denied, please check your API Key"
        case .networkError:
            return ""
        }
    }
}