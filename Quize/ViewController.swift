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

