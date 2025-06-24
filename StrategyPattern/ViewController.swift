//
//  ViewController.swift
//  StrategyPattern
//
//  Created by Hariharan GJ on 23/06/25.
//

import UIKit

class ViewController: UIViewController {

    
    let objCreditcardPayment = CreditcardPayment()
    let objGpayPayment = GpayPayment()
    let objPhonepayPayment = PhonepayPayment()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let objPaymentContext = PaymentContext(objpaymentStrategy: objCreditcardPayment)

        objPaymentContext.payBill(amount: 231)

        objPaymentContext.setStrategy(objGpayPayment)
        
        objPaymentContext.payBill(amount: 33)
        
        objPaymentContext.setStrategy(objPhonepayPayment)
        
        objPaymentContext.payBill(amount: 780)
    }


}



protocol paymentStrategy{
    
    func Pay(amount : Double)
    
}


class CreditcardPayment: paymentStrategy {
    
    func Pay(amount: Double) {
        print("CREDIT CARD ", amount)
    }
    
}


class GpayPayment: paymentStrategy {
 
    func Pay(amount: Double) {
        print("GPAY PAYMENT ", amount)
    }
    
}

class PhonepayPayment: paymentStrategy {
    
    func Pay(amount: Double) {
        print("PHONEPAY PAYMENT ", amount)
    }
    
}




class PaymentContext{
    
    private var objpaymentStrategy : paymentStrategy
    
    init(objpaymentStrategy: paymentStrategy) {
        self.objpaymentStrategy = objpaymentStrategy
    }
    
    func setStrategy(_ strategy: paymentStrategy) {
        self.objpaymentStrategy = strategy
    }
    
    func payBill(amount: Double) {
        objpaymentStrategy.Pay(amount: amount)
    }
    
}


