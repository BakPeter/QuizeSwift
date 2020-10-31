import UIKit

class ViewController: UIViewController {
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerLabel: UILabel!
    
    let questions: [String] = [
        "What is 7 + 7",
        "What is the capital of Vermont",
        "What is cognag made from"
    ]
    
    let answers: [String] = [
        "14",
        "Montpelier",
        "Frapes"
    ]
    
    var currentQuestionInd: Int = 0
    
    @IBAction func showNextQuestion(_ sender: UIButton) {
        currentQuestionInd += 1
        if(currentQuestionInd == questions.count) {
            currentQuestionInd = 0
        }
        
        let question: String = questions[currentQuestionInd]
        questionLabel.text = question
        answerLabel.text = "???"
        
        let name = "peter"
        var hasPet: Bool? = true
        hasPet = nil
    
        
        var num: Float64 = 0
        var arr: Array<Int> = []
        var strs: [String] = []
        var dic: Dictionary<String, Int> = [:]

        let countingUp = ["one", "'two'"]
        countingUp.count
        
        for str in countingUp {
            print(str)
        }
        for (i, str) in countingUp.enumerated() {
            print("(\(i), \(str))")
        }
        
        let num1: Int? = nil
        let num2: Int?
        let num3: Int?
        
        num2 = 4
        num3 = 8
        if let n1 = num1,
            let n2 = num2,
            let n3 = num3 {
                let avg = (n1 + n2 + n3)/3
                   print(avg)
        }else {
            print("nil")
        }
        let compareAscending = { (i: Int, j: Int) -> Bool in
            return i<j
        }
        print(compareAscending(1,2))
        print(compareAscending(2,1))
        
        var numbers = [42,9,12,-17]
        numbers.sort(by:compareAscending)
        print(numbers)
    }
    
    @IBAction func showAnswer(_ sender: UIButton) {
        let answer: String = answers[currentQuestionInd]
        answerLabel.text = answer
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        questionLabel.text = questions[currentQuestionInd]
    }
}

