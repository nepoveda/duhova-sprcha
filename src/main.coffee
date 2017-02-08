React    = require('react')
ReactDOM = require('react-dom')
{DropdownButton, Glyphicon, MenuItem, Dropdown} = require('react-bootstrap')
{WelcomeScreen} = require('./components/welcome')
{TerapyScreen} = require('./components/terapy')
{MassageScreen} = require('./components/massage')

NavigationDropdown = (props) ->
  <Dropdown>
    <Dropdown.Toggle>
      <Glyphicon glyph="th" />
    </Dropdown.Toggle>
    <Dropdown.Menu>
      <MenuItem onClick={->props.onSetScreen('Terapy')}>Terapie pastelkou</MenuItem>
      <MenuItem onClick={->props.onSetScreen('Massage')}>Masáže</MenuItem>
      <MenuItem onClick={->props.onSetScreen('Contact')}>Kontakt</MenuItem>
    </Dropdown.Menu>
  </Dropdown>

RootComponent = React.createClass
  getInitialState: ->
    shownScreen: 'Welcome'
  render: ->
    mainComponent = switch @state.shownScreen
      when 'Welcome'
        <WelcomeScreen />
      when 'Terapy'
        <TerapyScreen />
      when 'Massage'
        <MassageScreen />
    <div>
      <NavigationDropdown onSetScreen={(id) => @setState(shownScreen: id)}/>

      <div className="container">
        {mainComponent}
      </div>
    </div>


ReactDOM.render(
  <RootComponent />
  document.getElementById('app'))
