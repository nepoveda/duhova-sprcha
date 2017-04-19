React    = require('react')
{Table} = require('react-bootstrap')

MassageScreen = ->
  <div className="pages">
    <h1>MASÁŽE</h1>
    <p>Energetická relaxační masáž je masáž „šitá na míru“  . Přizpůsobuji se potřebám

Vašeho těla. Kombinuji různé techniky, jak z klasické relaxační masáže, sportovní,

tak i havajské lomi-lomi masáže. </p>
    <p> Aromatické oleje jsou samozřejmostí. Jsou čistě přírodní a vůni si vybíráte sami či

po konzultaci vyberu pro Vás. </p>
    <p> Cílem této masáže je uvolnit, nabít a odejít příjemně naladěn. :o) </p>
    <h2> Ceník </h2>
    <Table>
      <tbody>
        <tr>
          <td> Energetická relaxační masáž </td>
          <td> 60 min </td>
          <td> 1.200,- Kč </td>
        </tr>
        <tr>
          <td> (Olejová masáž dle potřeby Vašeho těla včetně  pročištění a vyrovnání energií.)
</td><td></td><td></td>
        </tr>
        <tr>
          <td> Relaxační masáž </td>
          <td> 45min + 5min </td>
          <td> 750,- Kč </td>
        </tr>
        <tr>
          <td> Energetické čištění </td>
          <td> 45min + 5min </td>
          <td> 1000,- Kč </td>
        </tr>
        <tr>
          <td> (Nejedná se o masáž, ale vyrovnání energií ve Vašem těle...léčba probíhá v oblečení.)
</td><td></td><td></td>
        </tr>
      </tbody>
    </Table>
  </div>

module.exports = { MassageScreen }
