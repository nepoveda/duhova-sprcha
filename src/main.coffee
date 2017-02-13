React    = require('react')
ReactDOM = require('react-dom')
{Glyphicon, MenuItem, Dropdown, Jumbotron} = require('react-bootstrap')
{ContactScreen} = require('./components/contact')
{TerapyScreen} = require('./components/terapy')
{MassageScreen} = require('./components/massage')
{EnergyScreen} = require('./components/energy')

NavigationDropdown = (props) ->
  <Dropdown id="navigace">
    <Dropdown.Toggle>
      <Glyphicon glyph="th" />
    </Dropdown.Toggle>
    <Dropdown.Menu>
      <MenuItem onClick={->props.onSetScreen('Terapy')}>Terapie pastelkou</MenuItem>
      <MenuItem onClick={->props.onSetScreen('Massage')}>Masáže</MenuItem>
      <MenuItem onClick={->props.onSetScreen('Energy')}>Energetické čištění prostor</MenuItem>
      <MenuItem onClick={->props.onSetScreen('Contact')}>Kontakt</MenuItem>
    </Dropdown.Menu>
  </Dropdown>

RootComponent = React.createClass
  getInitialState: ->
    shownScreen: 'Contact'
  render: ->
    mainComponent = switch @state.shownScreen
      when 'Contact'
        <ContactScreen />
      when 'Terapy'
        <TerapyScreen />
      when 'Massage'
        <MassageScreen />
      when 'Energy'
        <EnergyScreen />
    <Jumbotron>
      <NavigationDropdown onSetScreen={(id) => @setState(shownScreen: id)}/>

      <div className="container">
        {mainComponent}
      </div>
    </Jumbotron>


ReactDOM.render(
  <RootComponent />
  document.getElementById('app'))
