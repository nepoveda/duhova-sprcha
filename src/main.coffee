React    = require('react')
ReactDOM = require('react-dom')

createHistory = require('history').createBrowserHistory
history = createHistory()

{Glyphicon, MenuItem, Dropdown, Image} = require('react-bootstrap')
{ContactScreen} = require('./components/contact')
{TerapyScreen}  = require('./components/terapy')
{MassageScreen} = require('./components/massage')
{EnergyScreen}  = require('./components/energy')

NavigationDropdown = (props) ->
  <div id="navigation">
    <Dropdown id="NavigationDropdown">
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
    </div>

RootComponent = React.createClass
  getInitialState: ->
    { pathname } = window.location
    shownScreen: pathname[1..] || 'Contact'
  setScreen: (id) ->
    @setState(shownScreen: id)
    location = window.location
    location.pathname = '/' + id
    history.push(location)
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
    <div className="background">
      <NavigationDropdown onSetScreen={@setScreen} />

      <div className="container" >
      <div className="logo"> <Image src="/assets/images/logo.png" responsive/> </div>
        {mainComponent}
      </div>
    </div>


ReactDOM.render(
  <RootComponent />
  document.getElementById('app'))
