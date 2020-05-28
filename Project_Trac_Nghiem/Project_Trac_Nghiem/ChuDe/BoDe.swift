//
//  BoDe.swift
//  Project_Trac_Nghiem
//
//  Created by Ong_Lao_Ngao on 5/16/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
//

import Foundation

class Data {
    

struct Topic {
    var id: Int
    var nameTopic: String
    var lisQuestion: [Question]
    
}

struct Question {
    var id: Int
    var question: String
    var answers: [String]
    var correct: Int
    
    
}
func listQuestion1() -> [Question] {
    let array = [
        Question(id: 1, question: "Mỗi năm con người vô tình ăn bao nhiêu sâu bọ?", answers: ["1 pound", "2 pounds", "5 pounds", "10 pounds"], correct: 3),
        Question(id: 2, question: "Loại nhạc cụ được chơi bởi người Úc bản địa?", answers: ["Singing Stick", "Flutaphone", "Didgeridoo", "Supertube"], correct: 3),
        Question(id: 3, question: "Tại sao chim không ngã khi ngủ trên cành cây?", answers: [" Chim không ngủ hoàn toàn ", "Chân chúng khoá chặt vào cành cây ", "Chim chọn loại cành to và rộng ", " Hơi thở giúp chúng cân bằng "], correct: 2),
        Question(id: 4, question: " Bạn sẽ tìm thấy báo đốm con ở quốc gia nào? ", answers: ["Colombia ", " Brazil" , "Chile " ,"Mexico "], correct: 4),
        Question(id: 5, question: "Cây hoa foxglove dùng làm sản phẩm gì? ", answers: ["thuốc tim ", "kem dưỡng da tay ", "thanh sô cô la " ,"thuốc ho "], correct: 1),
        Question(id: 6, question: "Loài động vật biển nào được gọi là thiên thần dưới biển ", answers: ["cá ", "sứa ", "ốc sên ", "sao biển "], correct: 3),
        Question(id: 7, question: "Trong phim hoạt hình Phineas and Ferb, mối quan hệ của hai nhân vật chính là gì ", answers: ["hàng xóm", " anh em kế ", "anh em họ ","bạn bè "], correct: 2),
        Question(id: 8, question: "Thịt kebab đến từ đất nước nào ", answers: ["Úc", "Anh" , "Tây Ban Nha ", " Thổ Nhĩ Kỳ "], correct: 4),
        Question(id: 9, question: "Ai là người đầu tiên đặt chân lên mặt trăng ", answers: ["Neil Amstrong ", "Jim Lovell ", "Luke Skywalker ","Orvill Wright "], correct: 1),
        Question(id: 10, question: "Một ngày trên mặt trăng dài bao lâu ", answers: ["27 ngày trên trái đất ", "24 giờ giống Trái Đất ", "5 ngày trên trái đất ","12 tiếng "], correct: 1)]
    return array
}
func listQuestion2() -> [Question] {
    let array = [
        Question(id: 1, question: "Mặt trăng mất bao lâu để quay 1 vòng quanh Trái Đất ", answers: ["12 tiếng ", "27 ngày ", "1 năm ", "3 tháng "], correct: 2),
        Question(id: 2, question: "Mặt trăng gây ra hiện tượng gì trên Trái Đất ", answers: ["Các mùa ", "Cây cối trưởng thành ", "Hình thành núi ", "Thuỷ triều "], correct: 4),
        Question(id: 3, question: "Các nhà thiên văn học cho rằng điều gì tạo ra Mặt trăng  ", answers: ["Thiên thạch", "Sao chổi", "Mặt trời ", "Núi lửa phun trào "], correct: 1),
Question(id: 4, question: "Bầu khí quyển của Mặt trăng có gì ", answers: ["Oxy ", "Nitơ ", "Heli ", "Không có gì"], correct: 4),
        Question(id: 5, question: "Mặt trăng bao nhiêu tuổi ", answers: ["100 năm ", "5,4 triệu năm ", "4,5 tỉ năm ", "10 tỉ năm "], correct: 3),
        Question(id: 6, question: "", answers: ["a", "b", "c","d"], correct: 1),
        Question(id: 7, question: "Điều gì làm Mặt trăng phát sáng ", answers: ["Mặt trời ", "Bề mặt nóng đỏ của chính nó ", "Bụi tiên ","Điện "], correct: 1),
        Question(id: 8, question: "Hành tinh nào có mặt trăng lớn nhất ", answers: ["Sao kim ", "Trái đất ", "Sao thổ ","Sao thiên vương "], correct: 3),
        Question(id: 9, question: "Xói mòn trên mặt trăng xảy ra như thế nào ", answers: ["Do gió ", "Do nước ", "Động đất ", "Không xảy ra"], correct: 4),
        Question(id: 10, question: "Loài động vật nào đang đối mặt với tuyệt chủng", answers: ["Gấu Koala ", "Cá hề ", "Cáo Arctic ","Tất cả những động vật trên"], correct: 4)]
    return array
}
func listTopic() -> [Topic] {
    let array = [
        Topic(id: 1, nameTopic: " Toán học", lisQuestion: listQuestion1()),
        Topic(id: 2, nameTopic: " Khoa học", lisQuestion: listQuestion2())]
    
    return array
}
}
