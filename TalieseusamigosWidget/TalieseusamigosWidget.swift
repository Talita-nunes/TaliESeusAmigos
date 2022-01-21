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
    
    let blocoversiculos: [BlocoVersiculos] = [
        BlocoVersiculos(id: 0, referencia: "Jeremias 29:11"), BlocoVersiculos(id: 1, referencia: "Joel 2:21"), BlocoVersiculos(id: 2, referencia: "Tiago 4:13-17"), BlocoVersiculos(id: 3, referencia: "2 Coríntios 5:17"), BlocoVersiculos(id: 4, referencia: "Ezequiel 36:25-27"), BlocoVersiculos(id: 5, referencia: "Salmo 65:11"), BlocoVersiculos(id: 6, referencia: "Filipenses 3:12-15"), BlocoVersiculos(id: 7, referencia: "Mateus 6:33"), BlocoVersiculos(id: 8, referencia: "Romanos 8:38,39"), BlocoVersiculos(id: 9, referencia: "Salmos 28:7"), BlocoVersiculos(id: 10, referencia: "Salmos 106:1"), BlocoVersiculos(id: 11, referencia: "Filipenses 4:6"), BlocoVersiculos(id: 12, referencia: "Salmos 100:4"), BlocoVersiculos(id: 13, referencia: "Colossenses 3:17"), BlocoVersiculos(id: 14, referencia: "1 Tessalonicenses 1:2,3"), BlocoVersiculos(id: 15, referencia: "Salmos 75:1"), BlocoVersiculos(id: 16, referencia: "Salmos 37:7"),BlocoVersiculos(id: 17, referencia: "Salmos 51:10-11"), BlocoVersiculos(id: 18, referencia: "Salmos 126:5,6"), BlocoVersiculos(id: 19, referencia: "Isaías 40:31"),BlocoVersiculos(id: 20, referencia: "Jeremias 29:11"), BlocoVersiculos(id: 21, referencia: "1 Tessalonicenses 5:18"), BlocoVersiculos(id: 22, referencia: "Colossenses 1:12"), BlocoVersiculos(id: 23, referencia: "Lucas 17:3,4"), BlocoVersiculos(id: 24, referencia: "Colossenses 3:13"), BlocoVersiculos(id: 25, referencia: "Deuteronômio 20:4"),BlocoVersiculos(id: 26, referencia: "Deuteronômio 29:9"), BlocoVersiculos(id: 27, referencia: "Provérbios 16:3"), BlocoVersiculos(id: 28, referencia: "Romanos 8:28"), BlocoVersiculos(id: 29, referencia: "Mateus 6:31-33"), BlocoVersiculos(id: 30, referencia: "Mateus 6:25"), BlocoVersiculos(id: 31, referencia: "Isaías 40:30-31"), BlocoVersiculos(id: 32, referencia: "Provérbios 3:5-6"), BlocoVersiculos(id: 33, referencia: "Salmos 34:8"), BlocoVersiculos(id: 34, referencia: "Colossenses 3:14-15"), BlocoVersiculos(id: 35, referencia: "1 Pedro 1:3"), BlocoVersiculos(id: 36, referencia: "Hebreus 12:10-11"), BlocoVersiculos(id: 37, referencia: "Eclesiastes 3:11"), BlocoVersiculos(id: 38, referencia: "Deuteronômio 7:9"), BlocoVersiculos(id: 39, referencia: "Salmo 107:29"), BlocoVersiculos(id: 40, referencia: "Salmo 88,3"), BlocoVersiculos(id: 41, referencia: "I Cor 1,7-8"), BlocoVersiculos(id: 42, referencia: "Marcos 1, 8"), BlocoVersiculos(id: 43, referencia: "Isaías 7:10-14"), BlocoVersiculos(id: 44, referencia: "Romanos 15:12-13"), BlocoVersiculos(id: 45, referencia: "Mateus 2:1-2"), BlocoVersiculos(id: 46, referencia: "Lucas 2:6-7"), BlocoVersiculos(id: 47, referencia: "Lucas 2:1-20"), BlocoVersiculos(id: 48, referencia: "Isaías 7:14"), BlocoVersiculos(id: 49, referencia: "Miqueias 5:2"), BlocoVersiculos(id: 50, referencia: "Isaías 11:1-10"), BlocoVersiculos(id: 51, referencia: "Lucas 1:26-38"), BlocoVersiculos(id: 52, referencia: "Mateus 1:18-25")]
    
    @Environment(\.widgetFamily) var size
    
    
    
    
    var body: some View {
        
       
        
        ZStack {
            
            Image("fundo")
                .resizable()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            
            VStack{

                Image("taliLendo")
                    .resizable()
                    .frame(width: 103, height: 139, alignment: .center)
//                    .padding(.top, 70)
                
                HStack {
                    
                    
                    
                    Text(blocoversiculos[getDay()].referencia)
                            .foregroundColor(Color.white)
                            .font(.system(size: 16, weight: .light, design: .default))
                    
                        
                        
                }
            }
          
        }

        
    }
    
    
    func getDay()-> Int{
        
        let date = Date()
        
        let component = date.get(.day, .month, .year)
        guard let day = component.day else { return 0 }
        return day
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
        .description("Esse é um atalho para o App aqui você tem a referência de um versículo por dia para memorizar")
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
