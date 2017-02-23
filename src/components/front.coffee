React    = require('react')
{Image} = require('react-bootstrap')

FrontScreen = ->
  <div className="frontHeader">
    <div className="frontLogo"> <Image src="/assets/images/logo.png" responsive/> </div>
    <h1>
      "U NÁS NAJDETE CESTU K SOBĚ"
    </h1>
    <h2> <strong> Kontakt: </strong></h2>
     <h3>Zuzka: 604 790 676 <br />
     Klára: 603 104 249 </h3>
    </div>
module.exports = {FrontScreen}
