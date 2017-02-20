React    = require('react')
{Map, Marker} = require('google-maps-react')

ContactScreen = ->
  <div>
      <h1>O nás</h1>
      <p><strong>Duhová sprcha </strong> je náš splněný sen. Jsme Klára a Zuzka, dvě kamarádky, které našly
         společnou cestu v životním poslání, pomáhat lidem …najít cestu k sobě.</p>
      <p>Klára se věnuje hlavně péči o duši a čištění, a to pomocí napojení a pastelek :0) </p>
      <p>Zuzka je vystudovaný masér (klasická a sportovní masáž, havajská Lomi-Lomi,
         reflexní masáž chodidel atd. – seznam se neustále rozrůstá). Věnuje se jak
         masážím – péče o tělo, tak i terapii pastelkami a energetickému čištění osob a
         prostor – péče o duši. </p>

      <p> <strong> Kontakt: </strong> </p>
      <p> Zuzka: 604 790 676 </p>
      <p> Klára: 603 104 249 </p>
      <p><strong> Provozovna: </strong></p>
      <p>Na Dolinách 41 </p>
      <p>Praha 4 - Nusle </p>

      <h2> Jak se k nám dostanete: </h2>
      <p> Zastávka tramvaje 17,3,2,21 Podolská vodárna a ulicí Podolská, Sinkulova, Na
        Dolinách cca 7 minut pěšky nahoru do kopce, po levé straně Duhová sprcha.</p>
      <p> Metro Pražského Povstání, trasa C, ulicí Na Dolinách dolů, po pravé straně,
          Duhová spracha </p>
      <p>Auto se dá v okolí zaparkovat přímo na hlavní ulici Na Dolinách </p>

      <Map google={window.google}
        style={height:'75%', position: 'absolute'}
        className={'map'}
        initialCenter={{lat: 50.057307 , lng: 14.42969}}
        zoom={18}>
        <Marker
          name={'Duhová sprcha'}
          position={{lat: 50.057307 , lng: 14.42969}} />
      </Map>
  </div>

module.exports = { ContactScreen }
