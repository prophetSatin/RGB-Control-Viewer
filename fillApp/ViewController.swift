import SceneKit
import Foundation
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var object: SCNView!
    
    @IBOutlet var sliderRed: UISlider!
    @IBOutlet var sliderGreen: UISlider!
    @IBOutlet var sliderBlue: UISlider!
    
    
    @IBOutlet var labelSliderRed: UILabel!
    @IBOutlet var labelSliderGreen: UILabel!
    @IBOutlet var labelSliderBlue: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //MARK: object
        object.backgroundColor = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 1)
        
        //MARK: sliderRed
        sliderRed.minimumValue = 0
        sliderRed.maximumValue = 255
        sliderRed.value = 0
        
        //MARK: sliderGreen
        sliderGreen.minimumValue = 0
        sliderGreen.maximumValue = 255
        sliderGreen.value = 0
        
        //MARK: sliderBlue
        sliderBlue.minimumValue = 0
        sliderBlue.maximumValue = 255
        sliderBlue.value = 0
        
        
        
    }
    
    func colorChanger() {
        let redValue: Float = sliderRed.value
        let greenValue: Float = sliderGreen.value
        let blueValue: Float = sliderBlue.value
        
        object.backgroundColor = UIColor(red: CGFloat(redValue)/255, green: CGFloat(greenValue)/255, blue: CGFloat(blueValue)/255, alpha: 1)
    }
    @IBAction func sliderRedAction(_ sender: Any) {
        labelSliderRed.text = String(Int(sliderRed.value))
        colorChanger()
        
    }
    @IBAction func sliderGreenAction(_ sender: Any) {
        labelSliderGreen.text = String(Int(sliderGreen.value))
        colorChanger()
    }

    @IBAction func sliderBlueAction(_ sender: Any) {
        labelSliderBlue.text = String(Int(sliderBlue.value))
        colorChanger()
    }
    
}



