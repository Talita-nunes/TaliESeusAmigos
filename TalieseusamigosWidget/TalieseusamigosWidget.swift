//
//  TalieseusamigosWidget.swift
//  TalieseusamigosWidget
//
//  Created by Talita Nunes dos Santos on 20/01/22.
//

import WidgetKit
import SwiftUI
import Intents





struct Provider: IntentTimelineProvider {
    func placeholder(in context: Context) -> SimpleEntry {
        SimpleEntry(date: Date(), configuration: ConfigurationIntent())
    }
    
    func getSnapshot(for configuration: ConfigurationIntent, in context: Context, completion: @escaping (SimpleEntry) -> ()) {
        let entry = SimpleEntry(date: Date(), configuration: configuration)
        completion(entry)
    }
    
    func getTimeline(for configuration: ConfigurationIntent, in context: Context, completion: @escaping (Timeline<Entry>) -> ()) {
        var entries: [SimpleEntry] = []
        
        // Generate a timeline consisting of five entries an hour apart, starting from the current date.
        let currentDate = Date()
        for hourOffset in 0 ..< 5 {
            let entryDate = Calendar.current.date(byAdding: .hour, value: hourOffset, to: currentDate)!
            let entry = SimpleEntry(date: entryDate, configuration: configuration)
            entries.append(entry)
        }
        
        let timeline = Timeline(entries: entries, policy: .atEnd)
        completion(timeline)
    }
}

struct SimpleEntry: TimelineEntry {
    let date: Date
    let configuration: ConfigurationIntent
}

struct TalieseusamigosWidgetEntryView : View {
    var entry: Provider.Entry
    
    
    
    
    var body: some View {
        Text(entry.date, style: .time)
        
        ZStack{
            
            VStack{
                Image("fundoWidget")
                    .resizable()
                    .scaledToFill()
            }
            
            HStack {
                
                ForEach(0...52)
                Text()
                    .foregroundColor(Color("Roxo"))
                .font(.system(size: 27, weight: .bold, design: .default))            }
        }
        
    }
    
}

@main
struct TalieseusamigosWidget: Widget {
    let kind: String = "TalieseusamigosWidget"
    
    var body: some WidgetConfiguration {
        IntentConfiguration(kind: kind, intent: ConfigurationIntent.self, provider: Provider()) { entry in
            TalieseusamigosWidgetEntryView(entry: entry)
        }
        .configurationDisplayName("Tali e seus amigos")
        .description("Esse é um atalho para o App aqui você tem a referência de um versículo por semana para memorizar")
    }
}

struct TalieseusamigosWidget_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            TalieseusamigosWidgetEntryView(entry: SimpleEntry(date: Date(), configuration: ConfigurationIntent()))
                .previewContext(WidgetPreviewContext(family: .systemSmall))
            
            TalieseusamigosWidgetEntryView(entry: SimpleEntry(date: Date(), configuration: ConfigurationIntent()))
                .previewContext(WidgetPreviewContext(family: .systemMedium))
            
            
            TalieseusamigosWidgetEntryView(entry: SimpleEntry(date: Date(), configuration: ConfigurationIntent()))
                .previewContext(WidgetPreviewContext(family: .systemLarge))
            
        }
    }
}
