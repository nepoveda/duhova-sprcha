React    = require('react')
{Image} = require('react-bootstrap')

Logo = (props) ->
  <div className="logo">
    <Image src="/assets/images/logo.png" onClick={->props.onSetScreen('uvodni-strana')} responsive />
  </div>

module.exports = {Logo}
