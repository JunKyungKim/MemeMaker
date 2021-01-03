//
//  ViewController.swift
//  MemeMaker
//
//  Created by 김준경 on 2021/01/04.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var topSegment: UISegmentedControl!
    @IBOutlet weak var bottomSegment: UISegmentedControl!
    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var bottomLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    
    @IBAction func topAction(_ sender: Any) {
        let selectedIndex = topSegment.selectedSegmentIndex;
        let selectedColor = stringForColor(idx: selectedIndex);
        
        topLabel.text = selectedColor;
        show();
    }
    
    func stringForColor(idx : Int) -> String{
        if idx == 0 { return "분홍색" }
        else if idx == 1 { return "연두색" }
        else if idx == 2 { return "파랑색" }
        else { return "색상" }
    }
    

    @IBAction func bottomAction(_ sender: Any) {
        let selectedBottomIndex = bottomSegment.selectedSegmentIndex;
        let selectedPenType = stringForPenType(idx: selectedBottomIndex);

        bottomLabel.text = selectedPenType;
        show();
    }
    
    func stringForPenType(idx : Int) -> String {
        if idx == 0 { return "색연필" }
        else if idx == 1 { return "형광펜" }
        else if idx == 2 { return "펜" }
        else { return "필기구" }
    }
    
    func show(){
        let topIdx =  topSegment.selectedSegmentIndex;
        let bottomIdx = bottomSegment.selectedSegmentIndex;
        if topIdx == 0 && bottomIdx == 0{
            imageView.image = UIImage(named: "PinkColorPencil")
        }
        if topIdx == 0 && bottomIdx == 1{
            imageView.image = UIImage(named: "PinkHighlighter")
        }
        if topIdx == 0 && bottomIdx == 2{
            imageView.image = UIImage(named: "PinkPen")
        }
        if topIdx == 1 && bottomIdx == 0{
            imageView.image = UIImage(named: "GreenColorPencil")
        }
        if topIdx == 1 && bottomIdx == 1{
            imageView.image = UIImage(named: "GreenHighlighter")
        }
        if topIdx == 1 && bottomIdx == 2{
            imageView.image = UIImage(named: "GreenPen")
        }
        if topIdx == 2 && bottomIdx == 0{
            imageView.image = UIImage(named: "BlueColorPencil")
        }
        if topIdx == 2 && bottomIdx == 1{
            imageView.image = UIImage(named: "BlueHighlighter")
        }
        if topIdx == 2 && bottomIdx == 2{
            imageView.image = UIImage(named: "BluePen")
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
}

