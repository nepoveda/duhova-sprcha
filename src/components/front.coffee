React    = require('react')
{Image} = require('react-bootstrap')

FrontScreen = ->
  <div className="frontHeader">
    <div className="frontLogo"> <Image src="/assets/images/logo.png" responsive/> </div>
    <h1>
      "U NÁS NAJDETE CESTU K SOBĚ"
    </h1>
    <p> <strong> Kontakt: </strong></p>
     <p>Zuzka: 604 790 676 <br />
     Klára: 603 104 249 </p>
    </div>
module.exports = {FrontScreen}
