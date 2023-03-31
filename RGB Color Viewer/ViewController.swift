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
        object.layer.cornerRadius = 15
        object.backgroundColor = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 1)
        
        //MARK: sliderRed
        sliderRed.minimumValue = 0
        sliderRed.maximumValue = 255
        sliderRed.value = 0
        sliderRed.minimumTrackTintColor = .red
        
        //MARK: sliderGreen
        sliderGreen.minimumValue = 0
        sliderGreen.maximumValue = 255
        sliderGreen.value = 0
        sliderGreen.minimumTrackTintColor = .green
        
        //MARK: sliderBlue
        sliderBlue.minimumValue = 0
        sliderBlue.maximumValue = 255
        sliderBlue.value = 0
        sliderBlue.minimumTrackTintColor = .blue
    }
    
    private func colorChanger() {
        let redValue: Float = sliderRed.value
        let greenValue: Float = sliderGreen.value
        let blueValue: Float = sliderBlue.value
        
        object.backgroundColor = UIColor(red: CGFloat(redValue)/255, green: CGFloat(greenValue)/255, blue: CGFloat(blueValue)/255, alpha: 1)
    }
    @IBAction private func sliderRedAction(_ sender: Any) {
        labelSliderRed.text = String(Int(sliderRed.value))
        labelSliderGreen.text = String(Int(sliderGreen.value))
        labelSliderBlue.text = String(Int(sliderBlue.value))
        colorChanger()
    }
    
}



