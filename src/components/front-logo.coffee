React    = require('react')
{Image} = require('react-bootstrap')

FrontLogo = (props) ->
  <div className="frontLogo">
    <Image src="/assets/images/logo.png"  className="logo-big" responsive/>
  </div>

module.exports = {FrontLogo}
