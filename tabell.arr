use context essentials2021
#inkluderer div. pakker
include shared-gdrive(
"dcic-2021",
"1wyQZj_L0qqV9Ekgr9au6RX2iqt2Ga8Ep")
include gdrive-sheets
include data-source
ssid = "1RYN0i4Zx_UETVuYacgaGfnFcv4l9zd9toQTTdkQkj7g"

#definerer tabellen samt gjør om elementer i "energi" til strings
kWh-wealthy-consumer-data =
load-table: komponent, energi
    source: load-spreadsheet(ssid).sheet-by-name("kWh", true)
    sanitize energi using string-sanitizer
end

#bereger forbruk fra bil, ved parameter distance-travelled og distance-per-unit-of-fuel
fun bil-energi(distance-travelled, distance-per-unit-of-fuel):
  energy-per-unit-of-fuel = 10
  (distance-travelled / distance-per-unit-of-fuel ) * energy-per-unit-of-fuel
end

#funksjon for å konvertere "energi" kolonnens elementer til nummer m/ bil beregning
fun energi-to-number(str :: String) -> Number:
  cases(Option) string-to-number(str):
    | some(a) => a
    | none => bil-energi(100, 20)
  end
end

#lager ny tabell med nummer istedenfor string
kWh-num = transform-column(kWh-wealthy-consumer-data, "energi", energi-to-number)

#beregner forbruksavtrykk og printer
forbruksavtrykk = sum(kWh-num, "energi") + bil-energi(100, 20)
forbruksavtrykk

bar-chart(kWh-num, "komponent", "energi")