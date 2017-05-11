//
//  GraphView.swift
//  CCBT Unified
//
//  Created by Zaman on 06/05/17.
//  Copyright © 2017 Zaman Meraj. All rights reserved.
//

import UIKit

class GraphView: UIViewController {

    @IBOutlet var view2: UIView!
    @IBOutlet var graphView: UIView!
    @IBOutlet var piGraphView: UIView!
     let pieChartView = PieChartView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Graph"
        self.view2.backgroundColor = UIColor.clear
        let barChart = PNBarChart(frame: CGRect(x: 0, y: 0, width: self.view2.frame.size.width, height: self.view2.frame.size.height))
        barChart.bounds = self.view2.bounds
//        barChart.backgroundColor = UIColor.red
        barChart.animationType = .Waterfall
        barChart.labelMarginTop = 5.0
        barChart.xLabels = ["Sep 1", "Sep 2", "Sep 3", "Sep 4", "Sep 5", "Sep 6", "Sep 7", "Sep 8", "Sep 9"]
        barChart.yValues = [1, 23, 12, 18, 32, 12, 21 , 3, 51]
        barChart.strokeChart()
//        barChart.center = self.view.center
        
        pieChartView.frame = CGRect(origin: self.graphView.frame.origin, size: self.graphView.frame.size)
        pieChartView.segments = [
            Segment(color: UIColor(red: 1.0, green: 31.0/255.0, blue: 73.0/255.0, alpha: 1.0), name:"Red", value: 57.56),
            Segment(color: UIColor(red:1.0, green: 138.0/255.0, blue: 0.0, alpha: 1.0), name: "Orange", value: 30),
            Segment(color: UIColor(red: 122.0/255.0, green: 108.0/255.0, blue: 1.0, alpha: 1.0), name: "Purple", value: 27),
            Segment(color: UIColor(red: 0.0, green: 222.0/255.0, blue: 1.0, alpha: 1.0), name: "Light Blue", value: 40),
            Segment(color: UIColor(red: 100.0/255.0, green: 241.0/255.0, blue: 183.0/255.0, alpha: 1.0), name: "Green", value: 25),
            Segment(color: UIColor(red: 0.0, green: 100.0/255.0, blue: 1.0, alpha: 1.0), name: "Blue", value: 38)
        ]
        pieChartView.segmentLabelFont = UIFont.systemFont(ofSize: 12)
        pieChartView.showSegmentValueInLabel = true
        let data: [CGFloat] = [0,2,3,5,15,62,14,3]
        let lineChart = LineChart()
        lineChart.area = true
        lineChart.dots.color = UIColor.red
        lineChart.linecolor = UIColor.red
        lineChart.animation.enabled = true
        lineChart.isScoreTypeProgress = true
        lineChart.x.axis.visible = true
        lineChart.y.axis.visible = true
        lineChart.addLine(data)
        lineChart.lineWidth = 2
        lineChart.y.grid.visible = true
//        lineChart.y.grid.color = UIColor.clear
        lineChart.x.grid.visible = true
        lineChart.x.grid.color = UIColor.clear
        lineChart.x.labels.values = ["a", "b", "c", "d", "e", "f", "g", "h"]
        lineChart.y.labels.values = ["0", "1", "2", "3", "4", "5", "6", "7"]
        lineChart.x.labels.visible = true
        lineChart.y.labels.visible = true
        lineChart.frame = CGRect(origin: self.graphView.frame.origin, size: self.graphView.frame.size)
        
        pieChartView.layer.shadowColor = UIColor.gray.cgColor
//        self.graphView.addSubview(pieChartView)
        self.graphView.addSubview(lineChart)
        self.view2.addSubview(barChart)
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
