//
//  ViewController.swift
//  StrategyPattern
//
//  Created by Hariharan GJ on 23/06/25.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
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
    
    
    
}


