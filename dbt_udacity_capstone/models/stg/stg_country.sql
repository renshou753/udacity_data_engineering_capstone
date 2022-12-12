with t3 as (
  with t1 as (
  select * from {{ ref('src_immigration') }}
  ),
  t2 as (
    select * from {{ ref('src_immigration') }}
  )

  select 
        distinct i94cit as country_code 
  from t1

  union

  select 
        distinct i94res as country_code
  from t1
)

select country_code,
  case country_code
  when 582 then  'MEXICO Air Sea, and Not Reported (I-94, no land arrivals)'
  when 236 then  'AFGHANISTAN'
  when 101 then  'ALBANIA'
  when 316 then  'ALGERIA'
  when 102 then  'ANDORRA'
  when 324 then  'ANGOLA'
  when 529 then  'ANGUILLA'
  when 518 then  'ANTIGUA-BARBUDA'
  when 687 then  'ARGENTINA '
  when 151 then  'ARMENIA'
  when 532 then  'ARUBA'
  when 438 then  'AUSTRALIA'
  when 103 then  'AUSTRIA'
  when 152 then  'AZERBAIJAN'
  when 512 then  'BAHAMAS'
  when 298 then  'BAHRAIN'
  when 274 then  'BANGLADESH'
  when 513 then  'BARBADOS'
  when 104 then  'BELGIUM'
  when 581 then  'BELIZE'
  when 386 then  'BENIN'
  when 509 then  'BERMUDA'
  when 153 then  'BELARUS'
  when 242 then  'BHUTAN'
  when 688 then  'BOLIVIA'
  when 717 then  'BONAIRE, ST EUSTATIUS, SABA' 
  when 164 then  'BOSNIA-HERZEGOVINA'
  when 336 then  'BOTSWANA'
  when 689 then  'BRAZIL'
  when 525 then  'BRITISH VIRGIN ISLANDS'
  when 217 then  'BRUNEI'
  when 105 then  'BULGARIA'
  when 393 then  'BURKINA FASO'
  when 243 then  'BURMA'
  when 375 then  'BURUNDI'
  when 310 then  'CAMEROON'
  when 326 then  'CAPE VERDE'
  when 526 then  'CAYMAN ISLANDS'
  when 383 then  'CENTRAL AFRICAN REPUBLIC'
  when 384 then  'CHAD'
  when 690 then  'CHILE'
  when 245 then  'CHINA, PRC'
  when 721 then  'CURACAO' 
  when 270 then  'CHRISTMAS ISLAND'
  when 271 then  'COCOS ISLANDS'
  when 691 then  'COLOMBIA'
  when 317 then  'COMOROS'
  when 385 then  'CONGO'
  when 467 then  'COOK ISLANDS'
  when 575 then  'COSTA RICA'
  when 165 then  'CROATIA'
  when 584 then  'CUBA'
  when 218 then  'CYPRUS'
  when 140 then  'CZECH REPUBLIC'
  when 723 then  'FAROE ISLANDS (PART OF DENMARK)'  
  when 108 then  'DENMARK'
  when 322 then  'DJIBOUTI'
  when 519 then  'DOMINICA'
  when 585 then  'DOMINICAN REPUBLIC'
  when 240 then  'EAST TIMOR'
  when 692 then  'ECUADOR'
  when 368 then  'EGYPT'
  when 576 then  'EL SALVADOR'
  when 399 then  'EQUATORIAL GUINEA'
  when 372 then  'ERITREA'
  when 109 then  'ESTONIA'
  when 369 then  'ETHIOPIA'
  when 604 then  'FALKLAND ISLANDS'
  when 413 then  'FIJI'
  when 110 then  'FINLAND'
  when 111 then  'FRANCE'
  when 601 then  'FRENCH GUIANA'
  when 411 then  'FRENCH POLYNESIA'
  when 387 then  'GABON'
  when 338 then  'GAMBIA'
  when 758 then  'GAZA STRIP' 
  when 154 then  'GEORGIA'
  when 112 then  'GERMANY'
  when 339 then  'GHANA'
  when 143 then  'GIBRALTAR'
  when 113 then  'GREECE'
  when 520 then  'GRENADA'
  when 507 then  'GUADELOUPE'
  when 577 then  'GUATEMALA'
  when 382 then  'GUINEA'
  when 327 then  'GUINEA-BISSAU'
  when 603 then  'GUYANA'
  when 586 then  'HAITI'
  when 726 then  'HEARD AND MCDONALD IS.'
  when 149 then  'HOLY SEE/VATICAN'
  when 528 then  'HONDURAS'
  when 206 then  'HONG KONG'
  when 114 then  'HUNGARY'
  when 115 then  'ICELAND'
  when 213 then  'INDIA'
  when 759 then  'INDIAN OCEAN AREAS (FRENCH)' 
  when 729 then  'INDIAN OCEAN TERRITORY' 
  when 204 then  'INDONESIA'
  when 249 then  'IRAN'
  when 250 then  'IRAQ'
  when 116 then  'IRELAND'
  when 251 then  'ISRAEL'
  when 117 then  'ITALY'
  when 388 then  'IVORY COAST'
  when 514 then  'JAMAICA'
  when 209 then  'JAPAN'
  when 253 then  'JORDAN'
  when 201 then  'KAMPUCHEA'
  when 155 then  'KAZAKHSTAN'
  when 340 then  'KENYA'
  when 414 then  'KIRIBATI'
  when 732 then  'KOSOVO' 
  when 272 then  'KUWAIT'
  when 156 then  'KYRGYZSTAN'
  when 203 then  'LAOS'
  when 118 then  'LATVIA'
  when 255 then  'LEBANON'
  when 335 then  'LESOTHO'
  when 370 then  'LIBERIA'
  when 381 then  'LIBYA'
  when 119 then  'LIECHTENSTEIN'
  when 120 then  'LITHUANIA'
  when 121 then  'LUXEMBOURG'
  when 214 then  'MACAU'
  when 167 then  'MACEDONIA'
  when 320 then  'MADAGASCAR'
  when 345 then  'MALAWI'
  when 273 then  'MALAYSIA'
  when 220 then  'MALDIVES'
  when 392 then  'MALI'
  when 145 then  'MALTA'
  when 472 then  'MARSHALL ISLANDS'
  when 511 then  'MARTINIQUE'
  when 389 then  'MAURITANIA'
  when 342 then  'MAURITIUS'
  when 760 then  'MAYOTTE (AFRICA - FRENCH)' 
  when 473 then  'MICRONESIA, FED. STATES OF'
  when 157 then  'MOLDOVA'
  when 122 then  'MONACO'
  when 299 then  'MONGOLIA'
  when 735 then  'MONTENEGRO' 
  when 521 then  'MONTSERRAT'
  when 332 then  'MOROCCO'
  when 329 then  'MOZAMBIQUE'
  when 371 then  'NAMIBIA'
  when 440 then  'NAURU'
  when 257 then  'NEPAL'
  when 123 then  'NETHERLANDS'
  when 508 then  'NETHERLANDS ANTILLES'
  when 409 then  'NEW CALEDONIA'
  when 464 then  'NEW ZEALAND'
  when 579 then  'NICARAGUA'
  when 390 then  'NIGER'
  when 343 then  'NIGERIA'
  when 470 then  'NIUE'
  when 275 then  'NORTH KOREA'
  when 124 then  'NORWAY'
  when 256 then  'OMAN'
  when 258 then  'PAKISTAN'
  when 474 then  'PALAU'
  when 743 then  'PALESTINE' 
  when 504 then  'PANAMA'
  when 441 then  'PAPUA NEW GUINEA'
  when 693 then  'PARAGUAY'
  when 694 then  'PERU'
  when 260 then  'PHILIPPINES'
  when 416 then  'PITCAIRN ISLANDS'
  when 107 then  'POLAND'
  when 126 then  'PORTUGAL'
  when 297 then  'QATAR'
  when 748 then  'REPUBLIC OF SOUTH SUDAN'
  when 321 then  'REUNION'
  when 127 then  'ROMANIA'
  when 158 then  'RUSSIA'
  when 376 then  'RWANDA'
  when 128 then  'SAN MARINO'
  when 330 then  'SAO TOME AND PRINCIPE'
  when 261 then  'SAUDI ARABIA'
  when 391 then  'SENEGAL'
  when 142 then  'SERBIA AND MONTENEGRO'
  when 745 then  'SERBIA' 
  when 347 then  'SEYCHELLES'
  when 348 then  'SIERRA LEONE'
  when 207 then  'SINGAPORE'
  when 141 then  'SLOVAKIA'
  when 166 then  'SLOVENIA'
  when 412 then  'SOLOMON ISLANDS'
  when 397 then  'SOMALIA'
  when 373 then  'SOUTH AFRICA'
  when 276 then  'SOUTH KOREA'
  when 129 then  'SPAIN'
  when 244 then  'SRI LANKA'
  when 346 then  'ST. HELENA'
  when 522 then  'ST. KITTS-NEVIS'
  when 523 then  'ST. LUCIA'
  when 502 then  'ST. PIERRE AND MIQUELON'
  when 524 then  'ST. VINCENT-GRENADINES'
  when 716 then  'SAINT BARTHELEMY' 
  when 736 then  'SAINT MARTIN' 
  when 749 then  'SAINT MAARTEN' 
  when 350 then  'SUDAN'
  when 602 then  'SURINAME'
  when 351 then  'SWAZILAND'
  when 130 then  'SWEDEN'
  when 131 then  'SWITZERLAND'
  when 262 then  'SYRIA'
  when 268 then  'TAIWAN'
  when 159 then  'TAJIKISTAN'
  when 353 then  'TANZANIA'
  when 263 then  'THAILAND'
  when 304 then  'TOGO'
  when 417 then  'TONGA'
  when 516 then  'TRINIDAD AND TOBAGO'
  when 323 then  'TUNISIA'
  when 264 then  'TURKEY'
  when 161 then  'TURKMENISTAN'
  when 527 then  'TURKS AND CAICOS ISLANDS'
  when 420 then  'TUVALU'
  when 352 then  'UGANDA'
  when 162 then  'UKRAINE'
  when 296 then  'UNITED ARAB EMIRATES'
  when 135 then  'UNITED KINGDOM'
  when 695 then  'URUGUAY'
  when 163 then  'UZBEKISTAN'
  when 410 then  'VANUATU'
  when 696 then  'VENEZUELA'
  when 266 then  'VIETNAM'
  when 469 then  'WALLIS AND FUTUNA ISLANDS'
  when 757 then  'WEST INDIES (FRENCH)' 
  when 333 then  'WESTERN SAHARA'
  when 465 then  'WESTERN SAMOA'
  when 216 then  'YEMEN'
  when 139 then  'YUGOSLAVIA'
  when 301 then  'ZAIRE'
  when 344 then  'ZAMBIA'
  when 315 then  'ZIMBABWE'
  when 403 then  'INVALID: AMERICAN SAMOA'
  when 712 then  'INVALID: ANTARCTICA' 
  when 700 then  'INVALID: BORN ON BOARD SHIP'
  when 719 then  'INVALID: BOUVET ISLAND (ANTARCTICA/NORWAY TERR.)'
  when 574 then  'INVALID: CANADA'
  when 720 then  'INVALID: CANTON AND ENDERBURY ISLS' 
  when 106 then  'INVALID: CZECHOSLOVAKIA'
  when 739 then  'INVALID: DRONNING MAUD LAND (ANTARCTICA-NORWAY)' 
  when 394 then  'INVALID: FRENCH SOUTHERN AND ANTARCTIC'
  when 501 then  'INVALID: GREENLAND'
  when 404 then  'INVALID: GUAM'
  when 730 then  'INVALID: INTERNATIONAL WATERS' 
  when 731 then  'INVALID: JOHNSON ISLAND' 
  when 471 then  'INVALID: MARIANA ISLANDS, NORTHERN'
  when 737 then  'INVALID: MIDWAY ISLANDS' 
  when 753 then  'INVALID: MINOR OUTLYING ISLANDS - USA'
  when 740 then  'INVALID: NEUTRAL ZONE (S. ARABIA/IRAQ)' 
  when 710 then  'INVALID: NON-QUOTA IMMIGRANT'
  when 505 then  'INVALID: PUERTO RICO'
  when  0  then  'INVALID: STATELESS'
  when 705 then  'INVALID: STATELESS'
  when 583 then  'INVALID: UNITED STATES'
  when 407 then  'INVALID: UNITED STATES'
  when 999 then  'INVALID: UNKNOWN'
  when 239 then  'INVALID: UNKNOWN COUNTRY'
  when 134 then  'INVALID: USSR'
  when 506 then  'INVALID: U.S. VIRGIN ISLANDS'
  when 755 then  'INVALID: WAKE ISLAND'  
  when 311 then  'Collapsed Tanzania (should not show)'
  when 741 then  'Collapsed Curacao (should not show)'
  when  54 then  'No Country Code (54)'
  when 100 then  'No Country Code (100)'
  when 187 then  'No Country Code (187)'
  when 190 then  'No Country Code (190)'
  when 200 then  'No Country Code (200)'
  when 219 then  'No Country Code (219)'
  when 238 then  'No Country Code (238)'
  when 277 then  'No Country Code (277)'
  when 293 then  'No Country Code (293)'
  when 300 then  'No Country Code (300)'
  when 319 then  'No Country Code (319)'
  when 365 then  'No Country Code (365)'
  when 395 then  'No Country Code (395)'
  when 400 then  'No Country Code (400)'
  when 485 then  'No Country Code (485)'
  when 503 then  'No Country Code (503)'
  when 589 then  'No Country Code (589)'
  when 592 then  'No Country Code (592)'
  when 791 then  'No Country Code (791)'
  when 849 then  'No Country Code (849)'
  when 914 then  'No Country Code (914)'
  when 944 then  'No Country Code (944)'
  when 996 then  'No Country Code (996)'
   else ''
  end as name
from t3


