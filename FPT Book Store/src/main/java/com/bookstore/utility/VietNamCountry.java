package com.bookstore.utility;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class VietNamCountry {

    public final static String VN = "VN";

    public final static Map<String, String> mapOfVietNam = new HashMap<String, String>() {
        {
            put("An Giang", "An Giang");
            put("Bà Rịa - Vũng Tàu", "Bà Rịa - Vũng Tàu");
            put("Bạc Liêu", "Bạc Liêu");
            put("Bắc Giang", "Bắc Giang");
            put("Bắc Kạn", "Bắc Kạn");
            put("Bắc Ninh", "Bắc Ninh");
            put("Bến Tre", "Bến Tre");
            put("Bình Dương", "Bình Dương");
            put("Bình Định", "Bình Định");
            put("Bình Phước", "Bình Phước");
            put("Bình Thuận", "Bình Thuận");
            put("Cà Mau", "Cà Mau");
            put("Cao Bằng", "Cao Bằng");
            put("Cần Thơ", "Cần Thơ");
            put("Đà Nẵng", "Đà Nẵng");
            put("Dăk Lăk", "Dăk Lăk");
            put("Dắk Nông", "Dắk Nông");
            put("Điện Biên", "Điện Biên");
            put("Đồng Nai", "Đồng Nai");
            put("Đồng Tháp", "Đồng Tháp");
            put("Gia Lai", "Gia Lai");
            put("Hà Giang", "Hà Giang");
            put("Hà Nam", "Hà Nam");
            put("Hà Nội", "Hà Nội");
            put("Hà Tĩnh", "Hà Tĩnh");
            put("Hải Dương", "Hải Dương");
            put("Hải Phòng", "Hải Phòng");
            put("Hậu Giang", "Hậu Giang");
            put("Hòa Bình", "Hòa Bình");
            put("Thành phố Hồ Chí Minh", "Thành phố Hồ Chí Minh");
            put("Hưng Yên", "Hưng Yên");
            put("Khánh Hòa", "Khánh Hòa");
            put("Kiên Giang", "Kiên Giang");
            put("Kom Tum", "Kom Tum");
            put("Lai Châu", "Lai Châu");
            put("Lạng Sơn", "Lạng Sơn");
            put("Lào Cai", "Lào Cai");
            put("Lâm Đồng", "Lâm Đồng");
            put("Long An", "Long An");
            put("Nam Định", "Nam Định");
            put("Nghệ An", "Nghệ An");
            put("Ninh Bình", "Ninh Bình");
            put("Ninh Thuận", "Ninh Thuận");
            put("Phú Thọ", "Phú Thọ");
            put("Phú Yên", "Phú Yên");
            put("Quảng Bình", "Quảng Bình");
            put("Quảng Nam", "Quảng Nam");
            put("Quảng Ngãi", "Quảng Ngãi");
            put("Quảng Ninh", "Quảng Ninh");
            put("Quảng Trị", "Quảng Trị");
            put("Sóc Trăng", "Sóc Trăng");
            put("Sơn La", "Sơn La");
            put("Tây Ninh", "Tây Ninh");
            put("Thái Bình", "Thái Bình");
            put("Thái Nguyên", "Thái Nguyên");
            put("Thanh Hóa", "Thanh Hóa");
            put("Thừa Thiên Huế", "Thừa Thiên Huế");
            put("Tiền Giang", "Tiền Giang");
            put("Trà Vinh", "Trà Vinh");
            put("Tuyên Quang", "Tuyên Quang");
            put("Vĩnh Long", "Vĩnh Long");
            put("Vĩnh Phú", "Vĩnh Phúc");
            put("Yên Bái", "Yên Bái");
        }
    };

    public final static List<String> listOfVietNamCode = new ArrayList<>(mapOfVietNam.keySet());
    public final static List<String> listOfVietNamName = new ArrayList<>(mapOfVietNam.values());

}
