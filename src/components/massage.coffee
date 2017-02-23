React    = require('react')
{Table} = require('react-bootstrap')

MassageScreen = ->
  <div>
    <h1>Masáže</h1>
    <p>Energetická relaxační masáž je masáž „šitá na míru“  . Přizpůsobuji se potřebám

Vašeho těla. Kombinuji různé techniky, jak z klasické relaxační masáže, sportovní,

tak i havajské lomi-lomi masáže. </p>
    <p> Aromatické oleje jsou samozřejmostí. Jsou čistě přírodní a vůni si vybíráte sami či

po konzultaci vyberu pro Vás. </p>
    <p> Cílem této masáže je uvolnit, nabít a odejít příjemně naladěn </p>
    <h2> Ceník </h2>
    <Table>
      <tbody>
        <tr>
          <td> Energetická relaxační masáž </td>
          <td> 45 min+5 min / 750,- </td>
        </tr>
        <tr>
          <td> Energetické čištění </td>
          <td> 30-45 min + 5 min / 1000,- </td>
        </tr>
      </tbody>
    </Table>
  </div>

module.exports = { MassageScreen }
