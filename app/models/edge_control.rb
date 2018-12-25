require 'http'

url = []
request_string = "https://www.youtube.com/watch?v=m60XKqEEnfg"
request_container = HTTP.get(request_string)

love_genre = [
"https://www.youtube.com/watch?v=x-OzspEcQG8",
"https://www.youtube.com/watch?v=z8Kr_aFB6Ww&list=RDN1yGG8jMSTI&index=27",
'https://www.youtube.com/watch?v=50VWOBi0VFs',
"https://www.youtube.com/watch?v=uqhJfjbNuQg",
"https://www.youtube.com/watch?v=k_7bV9fUnrc",
"https://www.youtube.com/watch?v=vXmqauitBkM",
"https://www.youtube.com/watch?v=nPLV7lGbmT4",
"https://www.youtube.com/watch?v=Rw-hw7rVOrA",
"https://www.youtube.com/watch?v=kWBE0sQC5L8",
"https://www.youtube.com/watch?v=nY-Xk3sGr6Q"
]
island_genre = [
"https://www.youtube.com/watch?v=tEJ6JVBUBmk",
"https://www.youtube.com/watch?v=qXnT3LFTc-s",
"https://www.youtube.com/watch?v=GEcwx0w8OkE",
"https://www.youtube.com/watch?v=Yof6yT6N0lM",
"https://www.youtube.com/watch?v=CvJi8INoyUw",
"https://www.youtube.com/watch?v=W2rTCNOSFKE",
"https://www.youtube.com/watch?v=wH_0_pijbZY",
"https://www.youtube.com/watch?v=xlCmQcRPtRg"
]
nyc_genre = [
  "https://www.youtube.com/watch?v=PMbELEUfmIA",
  "https://www.youtube.com/watch?v=G787_r_y6GU",
  "https://www.youtube.com/watch?v=_srvHOu75vM",
  "https://www.youtube.com/watch?v=WHRnvjCkTsw",
  "https://www.youtube.com/watch?v=yoYZf-lBF_U",
  "https://www.youtube.com/watch?v=siXunj15hKc",
  "https://www.youtube.com/watch?v=KkQ9splhEU0",
  "https://www.youtube.com/watch?v=PBwAxmrE194"
]
cali_genre = [
  "https://www.youtube.com/watch?v=0F0CAEoF4XM",
  "https://www.youtube.com/watch?v=DI3yXg-sX5c",
  "https://www.youtube.com/watch?v=Gb_-rZB2Foc",
  "https://www.youtube.com/watch?v=-hIjgofcuWU",
  "https://www.youtube.com/watch?v=j0uQBwFMfBk",
  "https://www.youtube.com/watch?v=fJuapp9SORA",
  "https://www.youtube.com/watch?v=1plPyJdXKIY"

]
four20_genre = [
 " https://www.youtube.com/watch?v=28JAS1ZUUqw",
 " https://www.youtube.com/watch?v=vUTI4bPdlgE&list=RDN1yGG8jMSTI&index=29",
 " https://www.youtube.com/watch?v=Kxq0oI6GINY&list=RDN1yGG8jMSTI&index=28",
 " https://www.youtube.com/watch?v=tnDh0JhmaFw",
 " https://www.youtube.com/watch?v=_Lby_Vi_WW8",
 " https://www.youtube.com/watch?v=_FE194VN6c4",
 " https://www.youtube.com/watch?v=sfSyvgJS9wA",
 " https://www.youtube.com/watch?v=cAwpX4C09KM",
 " https://www.youtube.com/watch?v=iM-wwG4FbfI",
 " https://www.youtube.com/watch?v=nNIG8UjPZPA",
 " https://www.youtube.com/watch?v=abzjyGVjAB8&index=2&list=PLqANXQP7J6gZXENQ_FUv8eWrYksEEvwTd",
" https://www.youtube.com/watch?v=a35rNEBNiO4",
" https://www.youtube.com/watch?v=F1B9Fk_SgI0&index=8&list=RDN1yGG8jMSTI",
" https://www.youtube.com/watch?v=jx96Twg-Aew",
" https://www.youtube.com/watch?v=-LHdiKzAs6k",
" https://www.youtube.com/watch?v=XzmnM2PLPfs&list=RDN1yGG8jMSTI&index=49"
]
nines_genre = [
"https://www.youtube.com/watch?v=C-5nist-qeQ",
"https://www.youtube.com/watch?v=Fwgt9Dxyyv0",
"https://www.youtube.com/watch?v=Cx0xzO73Amo",
"https://www.youtube.com/watch?v=sKgCLVl-bGY",
"https://www.youtube.com/watch?v=jBmkCoiHC2c&list=PLCF32F45129D9B6FA",
"https://www.youtube.com/watch?v=jkBTMEsY2Sk&index=10&list=PLCF32F45129D9B6FA",
"https://www.youtube.com/watch?v=Kr0tTbTbmVA&list=PLCF32F45129D9B6FA&index=18",
"https://www.youtube.com/watch?v=wIgOL21S98o&index=25&list=PLCF32F45129D9B6FA",
"https://www.youtube.com/watch?v=LlZydtG3xqI&list=PLCF32F45129D9B6FA&index=31",
"https://www.youtube.com/watch?v=WMdBs7uTLHw"
]
instum_genre = [
  "https://www.youtube.com/watch?v=7ZguAEoNpZw&index=27&list=RDN1yGG8jMSTI"


]
