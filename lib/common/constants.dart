// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:math';

class Constants {
  Constants._();

  static const String APP_TITLE = "Hotel App";

  static const String BASE_URL = "https://run.mocky.io/";

  static const String HOTEL_API_ROUTE = "v3/35e0d18e-2521-4f1b-a575-f0fe366f66e3";

  static const String ROOM_API_ROUTE = "v3/f9a38183-6f95-43aa-853a-9c83cbb05ecd";

  static const String RESERVATION_INFO_API_ROUTE = "v3/e8868481-743f-4eb2-a0d7-2bc4012275c8";

  static const String IMAGE_URLS_JSON_KEY = "image_urls";

  static const String PRICE_PER_JSON_KEY = "price_per";

  static const String HOTEL_NAME_JSON_KEY = "hotel_name";

  static const String HOTEL_ADDRESS_JSON_KEY = "hotel_adress";

  static const String RATING_NAME_JSON_KEY = "rating_name";

  static const String ARRIVAL_COUNTRY_JSON_KEY = "arrival_country";

  static const String TOUR_DATE_START_JSON_KEY = "tour_date_start";

  static const String TOUR_DATE_STOP_JSON_KEY = "tour_date_stop";

  static const String NUMBER_OF_NIGHTS_JSON_KEY = "number_of_nights";

  static const String TOUR_PRICE_JSON_KEY = "tour_price";

  static const String FUEL_CHARGE_JSON_KEY = "fuel_charge";

  static const String SERVICE_CHARGE_JSON_KEY = "service_charge";

  static const String SERVER_FAILURE = "Ошибка сервера. Повторите позже";

  static const String NO_INTERNET = "Нет интернет-соединения";

  static const String UNEXPECTED_ERROR = "Что-то пошло не так";

  static const String RUBLE = "₽";

  static const String HOTEL_TITLE = "Отель";

  static const String RESERVATION_TITLE = "Бронирование";

  static const String FONT_FAMILY = "SF PRO Display";

  static const String ABOUT_HOTEL_TITLE = "Об отеле";

  static const String COMFORT_FEATURE = "Удобства";

  static const String WHAT_INCLUDED_FEATURE = "Что включено";

  static const String WHAT_NOT_INCLUDED_FEATURE = "Что не включено";

  static const String MOST_IMPORTANT = "Самое необходимое";

  static const String NAVIGATE_TO_ROOM_TITLE = "К выбору номера";

  static const String NAVIGATE_TO_RESERVATION_TITLE = "Выбрать номер";

  static const String INITIAL_ROUTE = "/";

  static const String ROOM_ROUTE = "/room";

  static const String RESERVATION_ROUTE = "/reservation";

  static const String ABOUT_ROOM = "Подробнее о номере";

  static const String DEPARTURE = "Вылет из";

  static const String ARRIVAL_COUNTY = "Страна, город";

  static const String DATE = "Даты";

  static const String NUMBER_OF_NIGHTS = "Кол-во ночей";

  static const String ROOM_NAME = "Номер";

  static const String NUTRITION = "Питание";

  static const String PHONE = "Номер телефона";

  static const String EMAIL = "Почта";

  static const String CUSTOMER_HINT =
      "Эти данные никому не передаются. После оплаты мы вышли чек на указанный вами номер и почту";

  static const String YANDEX_RU = "@yandex.ru";

  static const String YA_RU = "@ya.ru";

  static const String MAIL_RU = "@mail.ru";

  static const String GMAIL_COM = "@gmail.com";

  static const String PHONE_MASK = "+7 (###) ###-##-##";

  static const String ABOUT_CUSTOMER = "Информация о покупателе";

  static const String NAME = "Имя";

  static const String SURNAME = "Фамилия";

  static const String DATE_OF_BIRTH = "Дата рождения";

  static const String CITIZENSHIP = "Гражданство";

  static const String PASSPORTS_NUMBER = "Номер загранпаспорта";

  static const String PERIOD_PASSPORT = "Срок действия загранпаспорта";

  static const String TOURIST = "турист";

  static const String FIRST_TOURIST = "Первый турист";

  static const String SECOND_TOURIST = "Второй турист";

  static const String THIRD_TOURIST = "Третий турист";

  static const String FOURTH_TOURIST = "Четвертый турист";

  static const String FIFTH_TOURIST = "Пятый турист";

  static const String ADD_ICON_PATH = "assets/icons/add_icon.svg";

  static const String MORE_ICON_PATH = "assets/icons/more_icon.svg";

  static const String CHECKED_ICON_PATH = "assets/icons/checked_icon.svg";

  static const String CLOSE_ICON_PATH = "assets/icons/close_icon.svg";

  static const String HAPPY_EMOJI_ICON_PATH = "assets/icons/happy_emoji_icon.svg";

  static const String COLLAPSE_ICON_PATH = "assets/icons/collapse_icon.svg";

  static const String PARTY_IMAGE_PATH = "assets/images/party_image.png";

  static const String ADD_TOURIST = "Добавить туриста";

  static const String LIMIT_FOR_TOURISTS = "Нельзя добавлять больше 5 туристов";

  static const String TOUR = "Тур";

  static const String FUEL_CHARGE = "Топливный сбор";

  static const String SERVICE_CHARGE = "Сервисный сбор";

  static const String TOTAL_PRICE = "К оплате";

  static const String PAY = "Оплатить";

  static const String ORDER_PAID = "Заказ оплачен";

  static const String SUPER = "Супер!";

  static const String ORDER_IN_WORK = "Ваш заказ принят в работу";

  static String ORDER_DESCRIPTION = "Подтверждение заказа №${Random().nextInt(100000)} может занять некоторое время (от 1 часа до суток). Как только мы получим ответ от туроператора, вам на почту придет уведомление.";

  static const String FINAL_ROUTE = "/final_route";

  static const String INVALID_DATA = "invalid";
}
