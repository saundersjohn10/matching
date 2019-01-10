//
//  ViewController.swift
//  match
//
//  Created by John Saunders on 12/19/18.
//  Copyright © 2018 John Saunders. All rights reserved.
//

import UIKit

//a function that animates the changing color of a UIView
extension UIView {
    func animateColorChange(toColor: UIColor, duration: Double) {
        let animation:CABasicAnimation = CABasicAnimation(keyPath: "backgroundColor")
        animation.fromValue = layer.backgroundColor
        animation.toValue = toColor.cgColor
        animation.duration = duration
        layer.add(animation, forKey: "backgroundColor")
        layer.backgroundColor = toColor.cgColor
    }
}

//function that allows for GCPoint objects to be added
func +(lhs: CGPoint, rhs: CGPoint) -> CGPoint {
    return CGPoint(x: lhs.x + rhs.x, y: lhs.y + rhs.y)
}


class ViewController: UIViewController {
    
    //row 0
    @IBOutlet weak var l00: UIImageView!
    @IBOutlet weak var l01: UIImageView!
    @IBOutlet weak var l02: UIImageView!
    @IBOutlet weak var l03: UIImageView!
    @IBOutlet weak var l04: UIImageView!
    @IBOutlet weak var l05: UIImageView!
    @IBOutlet weak var l06: UIImageView!
    @IBOutlet weak var l07: UIImageView!
    @IBOutlet weak var l08: UIImageView!
    @IBOutlet weak var l09: UIImageView!
    
    //row 1
    @IBOutlet weak var l10: UIImageView!
    @IBOutlet weak var l11: UIImageView!
    @IBOutlet weak var l12: UIImageView!
    @IBOutlet weak var l13: UIImageView!
    @IBOutlet weak var l14: UIImageView!
    @IBOutlet weak var l15: UIImageView!
    @IBOutlet weak var l16: UIImageView!
    @IBOutlet weak var l17: UIImageView!
    @IBOutlet weak var l18: UIImageView!
    @IBOutlet weak var l19: UIImageView!
    
    //row 2
    @IBOutlet weak var l20: UIImageView!
    @IBOutlet weak var l21: UIImageView!
    @IBOutlet weak var l22: UIImageView!
    @IBOutlet weak var l23: UIImageView!
    @IBOutlet weak var l24: UIImageView!
    @IBOutlet weak var l25: UIImageView!
    @IBOutlet weak var l26: UIImageView!
    @IBOutlet weak var l27: UIImageView!
    @IBOutlet weak var l28: UIImageView!
    @IBOutlet weak var l29: UIImageView!
    
    //row 3
    @IBOutlet weak var l30: UIImageView!
    @IBOutlet weak var l31: UIImageView!
    @IBOutlet weak var l32: UIImageView!
    @IBOutlet weak var l33: UIImageView!
    @IBOutlet weak var l34: UIImageView!
    @IBOutlet weak var l35: UIImageView!
    @IBOutlet weak var l36: UIImageView!
    @IBOutlet weak var l37: UIImageView!
    @IBOutlet weak var l38: UIImageView!
    @IBOutlet weak var l39: UIImageView!
    
    //row 4
    @IBOutlet weak var l40: UIImageView!
    @IBOutlet weak var l41: UIImageView!
    @IBOutlet weak var l42: UIImageView!
    @IBOutlet weak var l43: UIImageView!
    @IBOutlet weak var l44: UIImageView!
    @IBOutlet weak var l45: UIImageView!
    @IBOutlet weak var l46: UIImageView!
    @IBOutlet weak var l47: UIImageView!
    @IBOutlet weak var l48: UIImageView!
    @IBOutlet weak var l49: UIImageView!
    
    //row 5
    @IBOutlet weak var l50: UIImageView!
    @IBOutlet weak var l51: UIImageView!
    @IBOutlet weak var l52: UIImageView!
    @IBOutlet weak var l53: UIImageView!
    @IBOutlet weak var l54: UIImageView!
    @IBOutlet weak var l55: UIImageView!
    @IBOutlet weak var l56: UIImageView!
    @IBOutlet weak var l57: UIImageView!
    @IBOutlet weak var l58: UIImageView!
    @IBOutlet weak var l59: UIImageView!
    
    //row 6
    @IBOutlet weak var l60: UIImageView!
    @IBOutlet weak var l61: UIImageView!
    @IBOutlet weak var l62: UIImageView!
    @IBOutlet weak var l63: UIImageView!
    @IBOutlet weak var l64: UIImageView!
    @IBOutlet weak var l65: UIImageView!
    @IBOutlet weak var l66: UIImageView!
    @IBOutlet weak var l67: UIImageView!
    @IBOutlet weak var l68: UIImageView!
    @IBOutlet weak var l69: UIImageView!
    
    //row 7
    @IBOutlet weak var l70: UIImageView!
    @IBOutlet weak var l71: UIImageView!
    @IBOutlet weak var l72: UIImageView!
    @IBOutlet weak var l73: UIImageView!
    @IBOutlet weak var l74: UIImageView!
    @IBOutlet weak var l75: UIImageView!
    @IBOutlet weak var l76: UIImageView!
    @IBOutlet weak var l77: UIImageView!
    @IBOutlet weak var l78: UIImageView!
    @IBOutlet weak var l79: UIImageView!
    
    //row 8
    @IBOutlet weak var l80: UIImageView!
    @IBOutlet weak var l81: UIImageView!
    @IBOutlet weak var l82: UIImageView!
    @IBOutlet weak var l83: UIImageView!
    @IBOutlet weak var l84: UIImageView!
    @IBOutlet weak var l85: UIImageView!
    @IBOutlet weak var l86: UIImageView!
    @IBOutlet weak var l87: UIImageView!
    @IBOutlet weak var l88: UIImageView!
    @IBOutlet weak var l89: UIImageView!
    
    //row 9
    @IBOutlet weak var l90: UIImageView!
    @IBOutlet weak var l91: UIImageView!
    @IBOutlet weak var l92: UIImageView!
    @IBOutlet weak var l93: UIImageView!
    @IBOutlet weak var l94: UIImageView!
    @IBOutlet weak var l95: UIImageView!
    @IBOutlet weak var l96: UIImageView!
    @IBOutlet weak var l97: UIImageView!
    @IBOutlet weak var l98: UIImageView!
    @IBOutlet weak var l99: UIImageView!
    
    
    @IBOutlet weak var left: UIView!
    @IBOutlet weak var middle: UIView!
    @IBOutlet weak var right: UIView!
    
    var blocks = [[UIImageView]]()
    var occupied = Array(repeating: Array(repeating: 0, count: 100), count: 100)
    var shapes : NSMutableArray? = []
    var con = NSCondition() //conditional lock used while waiting for blocks to be placed
    
    var leftImages : NSMutableArray? = []
    var middleImages : NSMutableArray? = []
    var rightImages : NSMutableArray? = []
    
    var leftTempImages : NSMutableArray? = []
    var middleTempImages : NSMutableArray? = []
    var rightTempImages : NSMutableArray? = []
    
    var gameOn = true
    
    @IBOutlet weak var scoreLbl: UILabel!
    @IBOutlet weak var highscoreLbl: UILabel!
    var score = 0
    var highscore = 0
    
    var leftPlaced = false
    var middlePlaced = false
    var rightPlaced = false
    
    var blurEffectView: UIVisualEffectView? = nil
    var button : UIButton? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //add all matrix points into 2D array of refreneces to board
        let row0 : [UIImageView] = [l00,l01,l02,l03,l04,l05,l06,l07,l08,l09]
        blocks.append(row0)
        
        let row1 : [UIImageView] = [l10,l11,l12,l13,l14,l15,l16,l17,l18,l19]
        blocks.append(row1)
        
        let row2 : [UIImageView] = [l20,l21,l22,l23,l24,l25,l26,l27,l28,l29]
        blocks.append(row2)
        
        let row3 : [UIImageView] = [l30,l31,l32,l33,l34,l35,l36,l37,l38,l39]
        blocks.append(row3)
        
        let row4 : [UIImageView] = [l40,l41,l42,l43,l44,l45,l46,l47,l48,l49]
        blocks.append(row4)
        
        let row5 : [UIImageView] = [l50,l51,l52,l53,l54,l55,l56,l57,l58,l59]
        blocks.append(row5)
        
        let row6 : [UIImageView] = [l60,l61,l62,l63,l64,l65,l66,l67,l68,l69]
        blocks.append(row6)
        
        let row7 : [UIImageView] = [l70,l71,l72,l73,l74,l75,l76,l77,l78,l79]
        blocks.append(row7)
        
        let row8 : [UIImageView] = [l80,l81,l82,l83,l84,l85,l86,l87,l88,l89]
        blocks.append(row8)
        
        let row9 : [UIImageView] = [l90,l91,l92,l93,l94,l95,l96,l97,l98,l99]
        blocks.append(row9)
        
        scoreLbl.text = "0"
        
        let defaults = UserDefaults.standard
        highscore = defaults.integer(forKey: "highscore")
        highscoreLbl.text = String(highscore)
        
        //color the board to a grey color
        for (i,row) in blocks.enumerated() {
            for (j, _) in row.enumerated() {
                blocks[i][j].layer.cornerRadius = 6
                blocks[i][j].backgroundColor = UIColor(red: 227/255, green: 227/255, blue: 227/255, alpha: 1)
            }
        }
        
        left.addGestureRecognizer(getNewPanGest())
        left.isUserInteractionEnabled = true
        
        middle.addGestureRecognizer(getNewPanGest())
        middle.isUserInteractionEnabled = true
        
        right.addGestureRecognizer(getNewPanGest())
        right.isUserInteractionEnabled = true
        
        left?.frame.origin = CGPoint(x:28,y:600)
        middle?.frame.origin = CGPoint(x:143,y:600)
        right?.frame.origin = CGPoint(x:258,y:600)
        
        gameController()
    }
    func gameController() {
        DispatchQueue.global(qos: .background).async {
            while(true){
                self.leftPlaced = false
                self.middlePlaced = false
                self.rightPlaced = false
                DispatchQueue.main.async {
                    self.con.lock()
                    self.bringInNewRandomBlocks()
                    if(self.checkLost()){
                        self.gameOn = false
                        self.con.signal()
                    }
                    self.con.unlock()
                }
                
                self.con.lock()
                self.con.wait()
                
                //clear images
                self.deleteImages(array:self.leftImages!)
                self.deleteImages(array:self.middleImages!)
                self.deleteImages(array:self.rightImages!)
                
                self.deleteImages(array:self.leftTempImages!)
                self.deleteImages(array:self.middleTempImages!)
                self.deleteImages(array:self.rightTempImages!)
                
                self.left.isHidden = false
                self.middle.isHidden = false
                self.right.isHidden = false
                
                self.shapes?.removeAllObjects()
                
                if(!self.gameOn){
                    self.gameLost()
                }
                self.con.unlock()
                
                self.con.lock()
                while(!self.gameOn){
                    self.con.wait()
                }
                self.con.unlock()
            }
        }
    }
    
    //method returning a custom UIPanGestureRecognizer
    func getNewPanGest() -> UIPanGestureRecognizer{
        let myPanGestureRecognizer = UIPanGestureRecognizer(target: self, action: #selector(myPanAction))
        myPanGestureRecognizer.minimumNumberOfTouches = 1
        myPanGestureRecognizer.maximumNumberOfTouches = 1
        return myPanGestureRecognizer
    }
    
    //method that checks if the game is done, the game is done when there is no possible options for new blocks to be placed
    func checkLost() -> Bool {
        
        if((shapes?.count)! < 3 || (leftPlaced && middlePlaced && rightPlaced)){
            return false
        }
        
        if(!leftPlaced){
            if(checkBoardShapes(shape:shapes?[0] as! Int)){
                return false
            }
        }
        if(!middlePlaced){
            if(checkBoardShapes(shape:shapes?[1] as! Int)){
                return false
            }
        }
        if(!rightPlaced){
            if(checkBoardShapes(shape:shapes?[2] as! Int)){
                return false
            }
        }
        return true
    }
    
    //places new blocks on the board, if it isn't possible, return false
    func placeBlocks(newBlocks : UIView, arr : NSMutableArray) -> Bool{
        
        let x = Int(newBlocks.center.x)
        let y = Int(newBlocks.center.y)
        
        //check if it is an invalid placing
        if(x > 18 && x < 347 && y < 560 && y > 231){ //if inside the board
            
            for image in arr as! [UIImageView] {
                
                let xIndex : Int = Int((Double(newBlocks.center.x) + Double(image.center.x) - 34.5 + 3) / 33.5) - 1
                let yIndex : Int = Int((Double(newBlocks.center.y) + Double(image.center.y) - 225 - 30 + 3) / 33.5) - 1
                
                if(xIndex >= 10 || yIndex >= 10 || yIndex < 0 || xIndex < 0 || occupied[yIndex][xIndex] == 1){
                    return false
                }
            }
            //if reaches here, a valid placement
            for image in arr as! [UIImageView] { //loop through array of blocks
                //match the block to a block on the board
                let xIndex : Int = Int((Double(newBlocks.center.x) + Double(image.center.x) - 34.5 + 3) / 33.5) - 1
                let yIndex : Int = Int((Double(newBlocks.center.y) + Double(image.center.y) - 225 - 30 + 3) / 33.5) - 1
                occupied[yIndex][xIndex] = 1 //record as occupied
                self.blocks[yIndex][xIndex].backgroundColor = image.backgroundColor //recolor
                score += 1 //add to score
            }
            updateScore()
            return true
        }
        return false
    }
    
    //method that updates score and high score if applicable
    func updateScore(){
        scoreLbl.text = String(score)
        if(score > highscore){
            highscoreLbl.text = String(score)
            let defaults = UserDefaults.standard
            defaults.set(score, forKey: "highscore")
        }
    }
    
    //method that, given an arrays of indexes of the matrix, changes the colors
    func clearRow(rows : [Int], cols : [Int]){
        
        //clear Rows
        for row in rows{
            for i in 0...9{
                //change color and
                blocks[row][i].animateColorChange(toColor: UIColor(red: 227/255, green: 227/255, blue: 227/255, alpha: 1), duration: 0.5)
                occupied[row][i] = 0
            }
            score += 10
        }
        
        //clear Columns
        for colNum in cols{
            for i in 0...9{
                blocks[i][colNum].animateColorChange(toColor: UIColor(red: 227/255, green: 227/255, blue: 227/255, alpha: 1), duration: 0.5)
                occupied[i][colNum] = 0
            }
            score += 10
        }
        updateScore()
    }
    
    //method that is called as a block is being moved
    //handles movement and drops of blocks
    @objc func myPanAction(recognizer: UIPanGestureRecognizer) {
        if ((recognizer.state != UIGestureRecognizer.State.ended) &&
            (recognizer.state != UIGestureRecognizer.State.failed)) {
            recognizer.view?.center = recognizer.location(in: recognizer.view?.superview) + CGPoint(x:0,y:-90)
        }
        self.con.lock()
        
        //eliminate the temp images show the placing ones
        if(recognizer.state == UIGestureRecognizer.State.began){
            if(!leftPlaced && left?.frame.origin != CGPoint(x:28,y:600)){
                for image in leftImages! as! [UIImageView] {
                    image.isHidden = false
                }
                for image in leftTempImages! as! [UIImageView] {
                    image.isHidden = true
                }
                view.bringSubviewToFront(left)
            }
            
            if(!middlePlaced && middle?.frame.origin != CGPoint(x:143,y:600)){
                for image in middleImages! as! [UIImageView] {
                    image.isHidden = false
                }
                for image in middleTempImages! as! [UIImageView] {
                    image.isHidden = true
                }
                view.bringSubviewToFront(middle)
            }
            
            if(!rightPlaced && right?.frame.origin != CGPoint(x:258,y:600)){
                for image in rightImages! as! [UIImageView] {
                    image.isHidden = false
                }
                for image in rightTempImages! as! [UIImageView] {
                    image.isHidden = true
                }
                view.bringSubviewToFront(right)
            }
        }
        
        
        //check if a block has been placed on matrix
        if(recognizer.state == UIGestureRecognizer.State.ended){
            
            if(!leftPlaced && left?.frame.origin != CGPoint(x:28,y:600)){
                leftPlaced = placeBlocks(newBlocks: left,arr: leftImages!)
                
                //if the block is now placed
                if(leftPlaced){
                    left.isHidden = true
                    checkIfFilledOutRow()
                    if(self.checkLost()){
                        gameOn = false
                        self.con.signal()
                    }
                }
                else{
                    //if the block is let go but no placed, move it back
                    UIView.animate(withDuration: 0.2) {
                        self.left?.frame.origin = CGPoint(x:28,y:600)
                    }
                    for image in leftImages! as! [UIImageView] {
                        image.isHidden = true
                    }
                    for image in leftTempImages! as! [UIImageView] {
                        image.isHidden = false
                    }
                }
            }
            
            //repeat above on middle blocks
            if(!middlePlaced && middle?.frame.origin != CGPoint(x:143,y:600)){
                middlePlaced = placeBlocks(newBlocks: middle,arr: middleImages!)
                if(middlePlaced){
                    middle.isHidden = true
                    checkIfFilledOutRow()
                    if(self.checkLost()){
                        gameOn = false
                        self.con.signal()
                    }
                }
                else{
                    UIView.animate(withDuration: 0.2) {
                        self.middle?.frame.origin = CGPoint(x:143,y:600)
                    }
                    for image in middleImages! as! [UIImageView] {
                        image.isHidden = true
                    }
                    for image in middleTempImages! as! [UIImageView] {
                        image.isHidden = false
                    }
                }
            }
            
            //repeat above on right blocks
            if(!rightPlaced && right?.frame.origin != CGPoint(x:258,y:600)){
                rightPlaced = placeBlocks(newBlocks: right,arr: rightImages!)
                if(rightPlaced){
                    right.isHidden = true
                    checkIfFilledOutRow()
                    if(self.checkLost()){
                        gameOn = false
                        self.con.signal()
                    }
                }
                else{
                    UIView.animate(withDuration: 0.2) {
                        self.right?.frame.origin = CGPoint(x:258,y:600)
                    }
                    for image in rightImages! as! [UIImageView] {
                        image.isHidden = true
                    }
                    for image in rightTempImages! as! [UIImageView] {
                        image.isHidden = false
                    }
                }
            }
            
        }
        
        //check to see if all 3 blocks are placed
        if(recognizer.state == UIGestureRecognizer.State.ended && leftPlaced && middlePlaced && rightPlaced){
            self.con.signal()
        }
        
        self.con.unlock()
    }
    
    //checks if a row is flilled out, if so, calls clearRow method
    func checkIfFilledOutRow(){
        var rowFilled : [Int] = []
        var colFilled : [Int] = []
        
        //loop through occupied 2D array looking for filled out rows or cols
        for (i,row) in occupied.enumerated() {
            var total = 0
            for (j, _) in row.enumerated() {
                total += occupied[i][j]
            }
            if(total == 10){
                rowFilled.append(i)
            }
        }
        
        for (i,row) in occupied.enumerated() {
            var total = 0
            for (j, _) in row.enumerated() {
                total += occupied[j][i]
            }
            if(total == 10){
                colFilled.append(i)
            }
        }
        
        if(rowFilled.count > 0 || colFilled.count > 0){
            clearRow(rows: rowFilled, cols: colFilled)
        }
    }
    
    //called when play again is pressed, resets the game
    @objc func playAgainAction(sender: UIButton!) {
        gameOn = true
        for (i,row) in blocks.enumerated() {
            for (j, _) in row.enumerated() {
                blocks[i][j].backgroundColor = UIColor(red: 227/255, green: 227/255, blue: 227/255, alpha: 1)
            }
        }
        
        for i in 0...9{
            for j in 0...9{
                occupied[i][j] = 0
            }
        }
        self.blurEffectView?.frame.origin = CGPoint(x:(self.blurEffectView?.frame.origin.x)!,y:1000)
        
        blurEffectView = nil
        button?.isHidden = true
        button = nil
        
        scoreLbl.text = "0"
        score = 0
        con.signal()
    }
    
    //when the game has been lost, this method is called
    func gameLost(){
        DispatchQueue.main.async {
            
            //create a blur view
            let blurEffect = UIBlurEffect(style: .light)
            self.blurEffectView = UIVisualEffectView(effect: blurEffect)
            self.blurEffectView?.frame = self.view.bounds
            self.blurEffectView?.autoresizingMask = [.flexibleWidth, .flexibleHeight]
            self.view.addSubview((self.blurEffectView)!)
            self.blurEffectView!.frame.origin = CGPoint(x:0,y:-900)
            
            //add a play again button
            self.button = UIButton(frame: CGRect(x: 100, y: 100, width: 100, height: 50))
            self.button?.frame.origin.x = self.view.center.x - 50
            self.button?.frame.origin.y = self.view.center.y - 200
            self.button?.backgroundColor = UIColor(red: 120/255, green: 198/255, blue: 141/255, alpha: 1)
            self.button?.layer.cornerRadius = 5
            self.button?.setTitle("Play Again", for: .normal)
            self.button?.addTarget(self, action: #selector(self.playAgainAction), for: .touchUpInside)
            
            //bring in the blur view slowly
            UIView.animate(withDuration: 1.5, animations: {
                
                self.blurEffectView?.frame.origin = CGPoint(x:0,y:0)
                
            }, completion: { finished in
                
                if finished {
                    self.view.addSubview(self.button!)
                    self.scoreLbl.removeFromSuperview()
                    self.highscoreLbl.removeFromSuperview()
                    self.view.addSubview(self.scoreLbl)
                    self.view.addSubview(self.highscoreLbl)
                }
            })
        }
    }
    
    //method that completeletly destroys UIImageViews
    func deleteImages(array:NSMutableArray){
        for image in array as! [UIImageView] {
            image.removeFromSuperview()
            image.image = nil
        }
        array.removeAllObjects()
    }
    
    //method used to check to see if the game has been lost
    //given a number (representing a shape) checks to see if it is possible to put it on the board
    func checkBoardShapes(shape:Int) -> Bool{
        
        //3x3
        if(shape == 0){
            for row in 0...7{
                for col in 0...7{
                    if( (occupied[row][col] == 0 && occupied[row][col+1] == 0 && occupied[row][col+2] == 0) &&
                        (occupied[row+1][col] == 0 && occupied[row+1][col+1] == 0 && occupied[row+1][col+2] == 0) &&
                        occupied[row+2][col] == 0 && occupied[row+2][col+1] == 0 && occupied[row+2][col+2] == 0){
                        return true
                    }
                }
            }
        }
            //2x2
        else if(shape == 1){
            for row in 0...8{
                for col in 0...8{
                    if( (occupied[row][col] == 0 && occupied[row][col+1] == 0) &&
                        (occupied[row+1][col] == 0 && occupied[row+1][col+1] == 0)) {
                        return true
                    }
                }
            }
        }
            //2x1
        else if(shape == 2){
            for row in 0...9{
                for col in 0...8{
                    if (occupied[row][col] == 0 && occupied[row][col+1] == 0) {
                        return true
                    }
                }
            }
        }
            //3x1
        else if(shape == 3){
            for row in 0...9{
                for col in 0...7{
                    if (occupied[row][col] == 0 && occupied[row][col+1] == 0 && occupied[row][col+2] == 0) {
                        return true
                    }
                }
            }
        }
            //small L, bottom left
        else if(shape == 4){
            for row in 0...8{
                for col in 0...8{
                    if( (occupied[row][col] == 0) &&
                        (occupied[row+1][col] == 0 && occupied[row+1][col+1] == 0)) {
                        return true
                    }
                }
            }
        }
            //small L, top left
        else if(shape == 5){
            for row in 0...8{
                for col in 0...8{
                    if( (occupied[row][col] == 0 && occupied[row][col+1] == 0) &&
                        (occupied[row+1][col] == 0)) {
                        return true
                    }
                }
            }
        }
            //small L, top right
        else if(shape == 6){
            for row in 0...8{
                for col in 0...8{
                    if( (occupied[row][col] == 0 && occupied[row][col+1] == 0) &&
                        (occupied[row+1][col+1] == 0)) {
                        return true
                    }
                }
            }
        }
            //small L, bottom right
        else if(shape == 7){
            for row in 0...8{
                for col in 0...8{
                    if( (occupied[row][col+1] == 0) &&
                        (occupied[row+1][col] == 0 && occupied[row+1][col+1] == 0)) {
                        return true
                    }
                }
            }
        }
            //big L, bottom left
        else if(shape == 8){
            for row in 0...7{
                for col in 0...7{
                    if( (occupied[row][col] == 0) &&
                        (occupied[row+1][col] == 0) &&
                        occupied[row+2][col] == 0 && occupied[row+2][col+1] == 0 && occupied[row+2][col+2] == 0){
                        return true
                    }
                }
            }
        }
            //big L, top left
        else if(shape == 9){
            for row in 0...7{
                for col in 0...7{
                    if( (occupied[row][col] == 0 && occupied[row][col+1] == 0 && occupied[row][col+2] == 0) &&
                        (occupied[row+1][col] == 0) &&
                        occupied[row+2][col] == 0){
                        return true
                    }
                }
            }
        }
            //big L, top right
        else if(shape == 10){
            for row in 0...7{
                for col in 0...7{
                    if( (occupied[row][col] == 0 && occupied[row][col+1] == 0 && occupied[row][col+2] == 0) &&
                        (occupied[row+1][col+2] == 0) &&
                        occupied[row+2][col+2] == 0){
                        return true
                    }
                }
            }
        }
            //big L, bottom right
        else if(shape == 11){
            for row in 0...7{
                for col in 0...7{
                    if( (occupied[row][col+2] == 0) &&
                        (occupied[row+1][col+2] == 0) &&
                        occupied[row+2][col] == 0 && occupied[row+2][col+1] == 0 && occupied[row+2][col+2] == 0){
                        return true
                    }
                }
            }
        }
            //1x4
        else if(shape == 12){
            for row in 0...9{
                for col in 0...6{
                    if( occupied[row][col] == 0 && occupied[row][col+1] == 0 && occupied[row][col+2] == 0 && occupied[row][col+3] == 0){
                        return true
                    }
                }
            }
        }
            //1x5
        else if(shape == 13){
            for row in 0...9{
                for col in 0...5{
                    if( occupied[row][col] == 0 && occupied[row][col+1] == 0 && occupied[row][col+2] == 0 && occupied[row][col+3] == 0 && occupied[row][col+4] == 0){
                        return true
                    }
                }
            }
        }
            //2x1
        else if(shape == 14){
            for row in 0...8{
                for col in 0...9{
                    if( occupied[row][col] == 0 && occupied[row+1][col] == 0){
                        return true
                    }
                }
            }
        }
            //3x1
        else if(shape == 15){
            for row in 0...7{
                for col in 0...9{
                    if( occupied[row][col] == 0 && occupied[row+1][col] == 0 && occupied[row+2][col] == 0){
                        return true
                    }
                }
            }
        }
            //4x1
        else if(shape == 16){
            for row in 0...6{
                for col in 0...9{
                    if( occupied[row][col] == 0 && occupied[row+1][col] == 0 && occupied[row+2][col] == 0 && occupied[row+3][col] == 0){
                        return true
                    }
                }
            }
        }
            //5x1
        else if(shape == 17){
            for row in 0...5{
                for col in 0...9{
                    if( occupied[row][col] == 0 && occupied[row+1][col] == 0 && occupied[row+2][col] == 0 && occupied[row+3][col] == 0 && occupied[row+4][col] == 0){
                        return true
                    }
                }
            }
        }
            //1x1
        else {
            for row in 0...9{
                for col in 0...9{
                    if(occupied[row][col] == 0){
                        return true
                    }
                }
            }
        }
        return false
        
    }
    
    //brings random blocks and colors onto the screen
    func bringInNewRandomBlocks(){
        
        for i in 1...3 {
            var v : UIView? = nil
            var tempImages : NSMutableArray? = nil
            var arr : NSMutableArray? = nil
            if(i == 1){
                v = self.left
                arr = self.leftImages
                tempImages = self.leftTempImages
            }
            else if(i == 2){
                v = self.middle
                arr = self.middleImages
                tempImages = self.middleTempImages
            }
            else{
                v = self.right
                arr = self.rightImages
                tempImages = self.rightTempImages
            }
            
            let n = Int.random(in: 0 ... 18)
            self.shapes?.add(n)
            
            //3x3
            if(n == 0){
                
                //make draggable image
                let tR : UIImageView = newImage(xCoor : 64, yCoor: -19)
                v!.addSubview(tR)
                arr?.add(tR)
                let tM : UIImageView = self.newImage(xCoor : 30, yCoor: -19)
                v!.addSubview(tM)
                arr?.add(tM)
                let tL : UIImageView = self.newImage(xCoor : -4, yCoor: -19)
                v!.addSubview(tL)
                arr?.add(tL)
                
                let mR : UIImageView = self.newImage(xCoor : 64, yCoor: 15)
                v!.addSubview(mR)
                arr?.add(mR)
                let mM : UIImageView = self.newImage(xCoor : 30, yCoor: 15)
                v!.addSubview(mM)
                arr?.add(mM)
                let mL : UIImageView = self.newImage(xCoor : -4, yCoor: 15)
                v!.addSubview(mL)
                arr?.add(mL)
                
                let bR : UIImageView = self.newImage(xCoor : 64, yCoor: 49)
                v!.addSubview(bR)
                arr?.add(bR)
                let bM : UIImageView = self.newImage(xCoor : 30, yCoor: 49)
                v!.addSubview(bM)
                arr?.add(bM)
                let bL : UIImageView = self.newImage(xCoor : -4, yCoor: 49)
                v!.addSubview(bL)
                arr?.add(bL)
                
                
                //make temp image
                let temptR : UIImageView = self.newTempImage(xCoor : 52, yCoor: 28)
                v!.addSubview(temptR)
                tempImages?.add(temptR)
                let temptM : UIImageView = self.newTempImage(xCoor : 30, yCoor: 28)
                v!.addSubview(temptM)
                tempImages?.add(temptM)
                let temptL : UIImageView = self.newTempImage(xCoor : 8, yCoor: 28)
                v!.addSubview(temptL)
                tempImages?.add(temptL)
                
                let tempmR : UIImageView = self.newTempImage(xCoor : 52, yCoor: 50)
                v!.addSubview(tempmR)
                tempImages?.add(tempmR)
                let tempmM : UIImageView = self.newTempImage(xCoor : 30, yCoor: 50)
                v!.addSubview(tempmM)
                tempImages?.add(tempmM)
                let tempmL : UIImageView = self.newTempImage(xCoor : 8, yCoor: 50)
                v!.addSubview(tempmL)
                tempImages?.add(tempmL)
                
                let tempbR : UIImageView = self.newTempImage(xCoor : 52, yCoor: 72)
                v!.addSubview(tempbR)
                tempImages?.add(tempbR)
                let tempbM : UIImageView = self.newTempImage(xCoor : 30, yCoor: 72)
                v!.addSubview(tempbM)
                tempImages?.add(tempbM)
                let tempbL : UIImageView = self.newTempImage(xCoor : 8, yCoor: 72)
                v!.addSubview(tempbL)
                tempImages?.add(tempbL)
            }
                //2x2
            else if(n == 1){
                let tR : UIImageView = self.newImage(xCoor : 47, yCoor: 46)
                v!.addSubview(tR)
                arr?.add(tR)
                let tL : UIImageView = self.newImage(xCoor : 13, yCoor: 46)
                v!.addSubview(tL)
                arr?.add(tL)
                
                let bR : UIImageView = self.newImage(xCoor : 47, yCoor: 12)
                v!.addSubview(bR)
                arr?.add(bR)
                let bL : UIImageView = self.newImage(xCoor : 13, yCoor: 12)
                v!.addSubview(bL)
                arr?.add(bL)
                
                //temp images
                let temptR : UIImageView = self.newTempImage(xCoor : 41, yCoor: 39)
                v!.addSubview(temptR)
                tempImages?.add(temptR)
                let temptL : UIImageView = self.newTempImage(xCoor : 19, yCoor: 39)
                v!.addSubview(temptL)
                tempImages?.add(temptL)
                let tempbR : UIImageView = self.newTempImage(xCoor : 41, yCoor: 61)
                v!.addSubview(tempbR)
                tempImages?.add(tempbR)
                let tempbL : UIImageView = self.newTempImage(xCoor : 19, yCoor: 61)
                v!.addSubview(tempbL)
                tempImages?.add(tempbL)
            }
                //1x2
            else if(n == 2){
                let mR : UIImageView = self.newImage(xCoor : 47, yCoor: 30)
                v!.addSubview(mR)
                arr?.add(mR)
                let mL : UIImageView = self.newImage(xCoor : 13, yCoor: 30)
                v!.addSubview(mL)
                arr?.add(mL)
                
                //temp images
                let tempmR : UIImageView = self.newTempImage(xCoor : 19, yCoor: 50)
                v!.addSubview(tempmR)
                tempImages?.add(tempmR)
                let tempmL : UIImageView = self.newTempImage(xCoor : 41, yCoor: 50)
                v!.addSubview(tempmL)
                tempImages?.add(tempmL)
            }
                //1x3
            else if(n == 3){
                let mR : UIImageView = self.newImage(xCoor : 64, yCoor: 30)
                v!.addSubview(mR)
                arr?.add(mR)
                let mM : UIImageView = self.newImage(xCoor : 30, yCoor: 30)
                v!.addSubview(mM)
                arr?.add(mM)
                let mL : UIImageView = self.newImage(xCoor : -4, yCoor: 30)
                v!.addSubview(mL)
                arr?.add(mL)
                
                //temp images
                let tempmR : UIImageView = self.newTempImage(xCoor : 52, yCoor: 50)
                v!.addSubview(tempmR)
                tempImages?.add(tempmR)
                let tempmM : UIImageView = self.newTempImage(xCoor : 30, yCoor: 50)
                v!.addSubview(tempmM)
                tempImages?.add(tempmM)
                let tempmL : UIImageView = self.newTempImage(xCoor : 8, yCoor: 50)
                v!.addSubview(tempmL)
                tempImages?.add(tempmL)
                
            }
                //small L, bottom left
            else if(n == 4){
                let mL : UIImageView = self.newImage(xCoor : 13, yCoor: 13)
                v!.addSubview(mL)
                arr?.add(mL)
                let bL : UIImageView = self.newImage(xCoor : 13, yCoor: 47)
                v!.addSubview(bL)
                arr?.add(bL)
                let bR : UIImageView = self.newImage(xCoor : 47, yCoor: 47)
                v!.addSubview(bR)
                arr?.add(bR)
                
                //temp images
                let temptL : UIImageView = self.newTempImage(xCoor : 19, yCoor: 39)
                v!.addSubview(temptL)
                tempImages?.add(temptL)
                let tempbR : UIImageView = self.newTempImage(xCoor : 41, yCoor: 61)
                v!.addSubview(tempbR)
                tempImages?.add(tempbR)
                let tempbL : UIImageView = self.newTempImage(xCoor : 19, yCoor: 61)
                v!.addSubview(tempbL)
                tempImages?.add(tempbL)
            }
                //small L, top left
            else if(n == 5){
                let mL : UIImageView = self.newImage(xCoor : 13, yCoor: 13)
                v!.addSubview(mL)
                arr?.add(mL)
                let bL : UIImageView = self.newImage(xCoor : 13, yCoor: 47)
                v!.addSubview(bL)
                arr?.add(bL)
                let tR : UIImageView = self.newImage(xCoor : 47, yCoor: 13)
                v!.addSubview(tR)
                arr?.add(tR)
                
                //temp images
                let temptR : UIImageView = self.newTempImage(xCoor : 41, yCoor: 39)
                v!.addSubview(temptR)
                tempImages?.add(temptR)
                let temptL : UIImageView = self.newTempImage(xCoor : 19, yCoor: 39)
                v!.addSubview(temptL)
                tempImages?.add(temptL)
                let tempbL : UIImageView = self.newTempImage(xCoor : 19, yCoor: 61)
                v!.addSubview(tempbL)
                tempImages?.add(tempbL)
            }
                //small L, top right
            else if(n == 6){
                let mR : UIImageView = self.newImage(xCoor : 47, yCoor: 13)
                v!.addSubview(mR)
                arr?.add(mR)
                let bR : UIImageView = self.newImage(xCoor : 47, yCoor: 47)
                v!.addSubview(bR)
                arr?.add(bR)
                let tM : UIImageView = self.newImage(xCoor : 13, yCoor: 13)
                v!.addSubview(tM)
                arr?.add(tM)
                
                //temp images
                let temptR : UIImageView = self.newTempImage(xCoor : 41, yCoor: 39)
                v!.addSubview(temptR)
                tempImages?.add(temptR)
                let temptL : UIImageView = self.newTempImage(xCoor : 19, yCoor: 39)
                v!.addSubview(temptL)
                tempImages?.add(temptL)
                let tempbR : UIImageView = self.newTempImage(xCoor : 41, yCoor: 61)
                v!.addSubview(tempbR)
                tempImages?.add(tempbR)
                
            }
                //small L, bottom right
            else if(n == 7){
                let mR : UIImageView = self.newImage(xCoor : 47, yCoor: 13)
                v!.addSubview(mR)
                arr?.add(mR)
                let bR : UIImageView = self.newImage(xCoor : 47, yCoor: 47)
                v!.addSubview(bR)
                arr?.add(bR)
                let bM : UIImageView = self.newImage(xCoor : 13, yCoor: 47)
                v!.addSubview(bM)
                arr?.add(bM)
                
                //temp images
                let temptR : UIImageView = self.newTempImage(xCoor : 41, yCoor: 39)
                v!.addSubview(temptR)
                tempImages?.add(temptR)
                let tempbR : UIImageView = self.newTempImage(xCoor : 41, yCoor: 61)
                v!.addSubview(tempbR)
                tempImages?.add(tempbR)
                let tempbL : UIImageView = self.newTempImage(xCoor : 19, yCoor: 61)
                v!.addSubview(tempbL)
                tempImages?.add(tempbL)
            }
                //big L, bottom left
            else if(n == 8){
                
                let tL : UIImageView = self.newImage(xCoor : -4, yCoor: -34)
                v!.addSubview(tL)
                arr?.add(tL)
                let mL : UIImageView = self.newImage(xCoor : -4, yCoor: 0)
                v!.addSubview(mL)
                arr?.add(mL)
                
                let bR : UIImageView = self.newImage(xCoor : 64, yCoor: 33)
                v!.addSubview(bR)
                arr?.add(bR)
                let bM : UIImageView = self.newImage(xCoor : 30, yCoor: 33)
                v!.addSubview(bM)
                arr?.add(bM)
                let bL : UIImageView = self.newImage(xCoor : -4, yCoor: 33)
                v!.addSubview(bL)
                arr?.add(bL)
                
                //temp images
                let temptL : UIImageView = self.newTempImage(xCoor : 8, yCoor: 28)
                v!.addSubview(temptL)
                tempImages?.add(temptL)
                
                let tempmL : UIImageView = self.newTempImage(xCoor : 8, yCoor: 50)
                v!.addSubview(tempmL)
                tempImages?.add(tempmL)
                
                let tempbR : UIImageView = self.newTempImage(xCoor : 52, yCoor: 72)
                v!.addSubview(tempbR)
                tempImages?.add(tempbR)
                let tempbM : UIImageView = self.newTempImage(xCoor : 30, yCoor: 72)
                v!.addSubview(tempbM)
                tempImages?.add(tempbM)
                let tempbL : UIImageView = self.newTempImage(xCoor : 8, yCoor: 72)
                v!.addSubview(tempbL)
                tempImages?.add(tempbL)
            }
                //big L, top left
            else if(n == 9){
                let tR : UIImageView = self.newImage(xCoor : 64, yCoor: -33)
                v!.addSubview(tR)
                arr?.add(tR)
                let tM : UIImageView = self.newImage(xCoor : 30, yCoor: -33)
                v!.addSubview(tM)
                arr?.add(tM)
                let tL : UIImageView = self.newImage(xCoor : -4, yCoor: -33)
                v!.addSubview(tL)
                arr?.add(tL)
                
                let mL : UIImageView = self.newImage(xCoor : -4, yCoor: 2)
                v!.addSubview(mL)
                arr?.add(mL)
                
                let bL : UIImageView = self.newImage(xCoor : -4, yCoor: 35)
                v!.addSubview(bL)
                arr?.add(bL)
                
                //temp images
                let temptR : UIImageView = self.newTempImage(xCoor : 52, yCoor: 28)
                v!.addSubview(temptR)
                tempImages?.add(temptR)
                let temptM : UIImageView = self.newTempImage(xCoor : 30, yCoor: 28)
                v!.addSubview(temptM)
                tempImages?.add(temptM)
                let temptL : UIImageView = self.newTempImage(xCoor : 8, yCoor: 28)
                v!.addSubview(temptL)
                tempImages?.add(temptL)
                
                let tempmL : UIImageView = self.newTempImage(xCoor : 8, yCoor: 50)
                v!.addSubview(tempmL)
                tempImages?.add(tempmL)
                
                let tempbL : UIImageView = self.newTempImage(xCoor : 8, yCoor: 72)
                v!.addSubview(tempbL)
                tempImages?.add(tempbL)
            }
                //big L, top right
            else if(n == 10){
                let tR : UIImageView = self.newImage(xCoor : 64, yCoor: -33)
                v!.addSubview(tR)
                arr?.add(tR)
                let tM : UIImageView = self.newImage(xCoor : 30, yCoor: -33)
                v!.addSubview(tM)
                arr?.add(tM)
                let tL : UIImageView = self.newImage(xCoor : -4, yCoor: -33)
                v!.addSubview(tL)
                arr?.add(tL)
                
                
                let mR : UIImageView = self.newImage(xCoor : 63, yCoor: 2)
                v!.addSubview(mR)
                arr?.add(mR)
                
                let bR : UIImageView = self.newImage(xCoor : 63, yCoor: 35)
                v!.addSubview(bR)
                arr?.add(bR)
                
                //temp images
                let temptR : UIImageView = self.newTempImage(xCoor : 52, yCoor: 28)
                v!.addSubview(temptR)
                tempImages?.add(temptR)
                let temptM : UIImageView = self.newTempImage(xCoor : 30, yCoor: 28)
                v!.addSubview(temptM)
                tempImages?.add(temptM)
                let temptL : UIImageView = self.newTempImage(xCoor : 8, yCoor: 28)
                v!.addSubview(temptL)
                tempImages?.add(temptL)
                
                let tempmR : UIImageView = self.newTempImage(xCoor : 52, yCoor: 50)
                v!.addSubview(tempmR)
                tempImages?.add(tempmR)
                
                let tempbR : UIImageView = self.newTempImage(xCoor : 52, yCoor: 72)
                v!.addSubview(tempbR)
                tempImages?.add(tempbR)
            }
                //big L, bottom right
            else if(n == 11){
                let tR : UIImageView = self.newImage(xCoor : 64, yCoor: -35)
                v!.addSubview(tR)
                arr?.add(tR)
                
                
                let mR : UIImageView = self.newImage(xCoor : 64, yCoor: -1)
                v!.addSubview(mR)
                arr?.add(mR)
                
                let bR : UIImageView = self.newImage(xCoor : 64, yCoor: 33)
                v!.addSubview(bR)
                arr?.add(bR)
                let bM : UIImageView = self.newImage(xCoor : 30, yCoor: 33)
                v!.addSubview(bM)
                arr?.add(bM)
                let bL : UIImageView = self.newImage(xCoor : -4, yCoor: 33)
                v!.addSubview(bL)
                arr?.add(bL)
                
                //temp images
                let temptR : UIImageView = self.newTempImage(xCoor : 52, yCoor: 28)
                v!.addSubview(temptR)
                tempImages?.add(temptR)
                
                let tempmR : UIImageView = self.newTempImage(xCoor : 52, yCoor: 50)
                v!.addSubview(tempmR)
                tempImages?.add(tempmR)
                
                let tempbR : UIImageView = self.newTempImage(xCoor : 52, yCoor: 72)
                v!.addSubview(tempbR)
                tempImages?.add(tempbR)
                let tempbM : UIImageView = self.newTempImage(xCoor : 30, yCoor: 72)
                v!.addSubview(tempbM)
                tempImages?.add(tempbM)
                let tempbL : UIImageView = self.newTempImage(xCoor : 8, yCoor: 72)
                v!.addSubview(tempbL)
                tempImages?.add(tempbL)
            }
                //1x4
            else if(n == 12){
                let leftleft : UIImageView = self.newImage(xCoor : -20, yCoor: 30)
                v!.addSubview(leftleft)
                arr?.add(leftleft)
                
                let leftright : UIImageView = self.newImage(xCoor : 14, yCoor: 30)
                v!.addSubview(leftright)
                arr?.add(leftright)
                
                let rightleft : UIImageView = self.newImage(xCoor : 48, yCoor: 30)
                v!.addSubview(rightleft)
                arr?.add(rightleft)
                let rightright : UIImageView = self.newImage(xCoor : 82, yCoor: 30)
                v!.addSubview(rightright)
                arr?.add(rightright)
                
                //temp images
                let tempLL : UIImageView = self.newTempImage(xCoor : -3, yCoor: 50)
                v!.addSubview(tempLL)
                tempImages?.add(tempLL)
                let tempL : UIImageView = self.newTempImage(xCoor : 19, yCoor: 50)
                v!.addSubview(tempL)
                tempImages?.add(tempL)
                let tempR : UIImageView = self.newTempImage(xCoor : 41, yCoor: 50)
                v!.addSubview(tempR)
                tempImages?.add(tempR)
                let tempRR : UIImageView = self.newTempImage(xCoor : 63, yCoor: 50)
                v!.addSubview(tempRR)
                tempImages?.add(tempRR)
                
            }
                //1x5
            else if(n == 13){
                let leftleft : UIImageView = self.newImage(xCoor : -54, yCoor: 50)
                v!.addSubview(leftleft)
                arr?.add(leftleft)
                
                let leftright : UIImageView = self.newImage(xCoor : -20, yCoor: 50)
                v!.addSubview(leftright)
                arr?.add(leftright)
                
                let middle : UIImageView = self.newImage(xCoor : 14, yCoor: 50)
                v!.addSubview(middle)
                arr?.add(middle)
                
                let rightleft : UIImageView = self.newImage(xCoor : 48, yCoor: 50)
                v!.addSubview(rightleft)
                arr?.add(rightleft)
                let rightright : UIImageView = self.newImage(xCoor : 82, yCoor: 50)
                v!.addSubview(rightright)
                arr?.add(rightright)
                
                //temp images
                let tempRR : UIImageView = self.newTempImage(xCoor : 74, yCoor: 50)
                v!.addSubview(tempRR)
                tempImages?.add(tempRR)
                let tempR : UIImageView = self.newTempImage(xCoor : 52, yCoor: 50)
                v!.addSubview(tempR)
                tempImages?.add(tempR)
                let tempM : UIImageView = self.newTempImage(xCoor : 30, yCoor: 50)
                v!.addSubview(tempM)
                tempImages?.add(tempM)
                let tempL : UIImageView = self.newTempImage(xCoor : 8, yCoor: 50)
                v!.addSubview(tempL)
                tempImages?.add(tempL)
                let tempLL : UIImageView = self.newTempImage(xCoor : -14, yCoor: 50)
                v!.addSubview(tempLL)
                tempImages?.add(tempLL)
            }
                //2x1
            else if(n == 14){
                let b : UIImageView = self.newImage(xCoor : 30, yCoor: 12)
                v!.addSubview(b)
                arr?.add(b)
                
                let t : UIImageView = self.newImage(xCoor : 30, yCoor: 45)
                v!.addSubview(t)
                arr?.add(t)
                
                //temp images
                let tempB : UIImageView = self.newTempImage(xCoor : 30, yCoor: 63)
                v!.addSubview(tempB)
                tempImages?.add(tempB)
                
                let tempT : UIImageView = self.newTempImage(xCoor : 30, yCoor: 41)
                v!.addSubview(tempT)
                tempImages?.add(tempT)
                
            }
                //3x1
            else if(n == 15){
                let b : UIImageView = self.newImage(xCoor : 30, yCoor: -19)
                v!.addSubview(b)
                arr?.add(b)
                
                let m : UIImageView = self.newImage(xCoor : 30, yCoor: 15)
                v!.addSubview(m)
                arr?.add(m)
                
                let t : UIImageView = newImage(xCoor : 30, yCoor: 49)
                v!.addSubview(t)
                arr?.add(t)
                
                //temp images
                let temptM : UIImageView = newTempImage(xCoor : 30, yCoor: 28)
                v!.addSubview(temptM)
                tempImages?.add(temptM)
                
                let tempmM : UIImageView = newTempImage(xCoor : 30, yCoor: 50)
                v!.addSubview(tempmM)
                tempImages?.add(tempmM)
                
                let tempbM : UIImageView = newTempImage(xCoor : 30, yCoor: 72)
                v!.addSubview(tempbM)
                tempImages?.add(tempbM)
            }
                //4x1
            else if(n == 16){
                let bb : UIImageView = newImage(xCoor : 30, yCoor: -38)
                v!.addSubview(bb)
                arr?.add(bb)
                
                let bt : UIImageView = newImage(xCoor : 30, yCoor: -4)
                v!.addSubview(bt)
                arr?.add(bt)
                
                let tb : UIImageView = newImage(xCoor : 30, yCoor: 30)
                v!.addSubview(tb)
                arr?.add(tb)
                
                let tt : UIImageView = newImage(xCoor : 30, yCoor: 64)
                v!.addSubview(tt)
                arr?.add(tt)
                
                //temp images
                let tempBb : UIImageView = newTempImage(xCoor : 30, yCoor: 85)
                v!.addSubview(tempBb)
                tempImages?.add(tempBb)
                
                let tempB : UIImageView = newTempImage(xCoor : 30, yCoor: 63)
                v!.addSubview(tempB)
                tempImages?.add(tempB)
                
                let tempT : UIImageView = newTempImage(xCoor : 30, yCoor: 41)
                v!.addSubview(tempT)
                tempImages?.add(tempT)
                
                let tempTt : UIImageView = newTempImage(xCoor : 30, yCoor: 19)
                v!.addSubview(tempTt)
                tempImages?.add(tempTt)
            }
                //5x1
            else if(n == 17){
                let bb : UIImageView = newImage(xCoor : 30, yCoor: -53)
                v!.addSubview(bb)
                arr?.add(bb)
                
                let bt : UIImageView = newImage(xCoor : 30, yCoor: -20)
                v!.addSubview(bt)
                arr?.add(bt)
                
                let middle : UIImageView = newImage(xCoor : 30, yCoor: 14)
                v!.addSubview(middle)
                arr?.add(middle)
                
                let tb : UIImageView = newImage(xCoor : 30, yCoor: 48)
                v!.addSubview(tb)
                arr?.add(tb)
                
                let tt : UIImageView = newImage(xCoor : 30, yCoor: 81)
                v!.addSubview(tt)
                arr?.add(tt)
                
                //temp images
                let tempttM : UIImageView = newTempImage(xCoor : 30, yCoor: 6)
                v!.addSubview(tempttM)
                tempImages?.add(tempttM)
                
                let temptM : UIImageView = newTempImage(xCoor : 30, yCoor: 28)
                v!.addSubview(temptM)
                tempImages?.add(temptM)
                
                let tempmM : UIImageView = newTempImage(xCoor : 30, yCoor: 50)
                v!.addSubview(tempmM)
                tempImages?.add(tempmM)
                
                let tempbM : UIImageView = newTempImage(xCoor : 30, yCoor: 72)
                v!.addSubview(tempbM)
                tempImages?.add(tempbM)
                
                let tempbbM : UIImageView = newTempImage(xCoor : 30, yCoor: 94)
                v!.addSubview(tempbbM)
                tempImages?.add(tempbbM)
            }
                //1x1
            else {
                let mM : UIImageView = newImage(xCoor : 30, yCoor: 30)
                v!.addSubview(mM)
                arr?.add(mM)
                
                //temp images
                let tempmM : UIImageView = newTempImage(xCoor : 30, yCoor: 50)
                v!.addSubview(tempmM)
                tempImages?.add(tempmM)
            }
            var color:UIColor? = nil
            let randColor = Int.random(in: 0 ... 7)
            if(randColor == 0){ //dark red
                color = UIColor(red: 205/255, green: 110/255, blue: 92/255, alpha: 1)
            }
            else if(randColor == 1){ //pink
                color = UIColor(red: 215/255, green: 114/255, blue: 132/255, alpha: 1)
            }
            else if(randColor == 2){ //light blue
                color = UIColor(red: 116/255, green: 188/255, blue: 223/255, alpha: 1)
            }
            else if(randColor == 3){ //dark green
                color = UIColor(red: 120/255, green: 198/255, blue: 141/255, alpha: 1)
            }
            else if(randColor == 4){ //yellow
                color = UIColor(red: 257/255, green: 199/255, blue: 89/255, alpha: 1)
            }
            else if(randColor == 5){ //orange
                color = UIColor(red: 223/255, green: 151/255, blue: 88/255, alpha: 1)
            }
            else if(randColor == 6){ //lime green
                color = UIColor(red: 165/255, green: 217/255, blue: 104/255, alpha: 1)
            }
            else{ //purple
                color = UIColor(red: 124/255, green: 136/255, blue: 188/255, alpha: 1)
            }
            
            for image in arr! as! [UIImageView] {
                image.backgroundColor = color
                image.isHidden = true
            }
            for image in tempImages! as! [UIImageView]{
                image.backgroundColor = color
            }
            
        }
        //animate the images onto the screen
        self.left?.frame.origin = CGPoint(x:400,y:600)
        self.middle?.frame.origin = CGPoint(x:400,y:600)
        self.right?.frame.origin = CGPoint(x:400,y:600)
        UIView.animate(withDuration: 0.3) {
            self.left?.frame.origin = CGPoint(x:28,y:600)
            self.middle?.frame.origin = CGPoint(x:143,y:600)
            self.right?.frame.origin = CGPoint(x:258,y:600)
        }
        
        
    }
    
    func newTempImage(xCoor:Int, yCoor:Int) -> UIImageView{
        let imageView = UIImageView()
        self.view.addSubview(imageView)
        imageView.backgroundColor = .red
        imageView.frame = CGRect(x: xCoor, y: yCoor, width: 20, height: 20)
        imageView.layer.cornerRadius = 2.7
        return imageView
    }
    
    func newImage(xCoor:Int, yCoor:Int) -> UIImageView{
        let imageView = UIImageView()
        self.view.addSubview(imageView)
        imageView.backgroundColor = .red
        imageView.frame = CGRect(x: xCoor, y: yCoor, width: 28, height: 28)
        imageView.isUserInteractionEnabled = true
        imageView.layer.cornerRadius = 4
        return imageView
    }
    
    
    
    
    
}




