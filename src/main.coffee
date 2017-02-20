React    = require('react')
ReactDOM = require('react-dom')

createHistory = require('history').createBrowserHistory
history = createHistory()

{Glyphicon, MenuItem, Dropdown, Jumbotron} = require('react-bootstrap')
{ContactScreen} = require('./components/contact')
{TerapyScreen} = require('./components/terapy')
{MassageScreen} = require('./components/massage')
{EnergyScreen} = require('./components/energy')

imgUrl = './images/pozadi.png'
styles = {
      backgroundImage: url('./images/pozadi.png'),
      backgroundSize: 'cover'
    }

NavigationDropdown = (props) ->
  <Dropdown id="navigation">
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
    <div style={ styles }>

      <NavigationDropdown onSetScreen={@setScreen} />

      <div className="container" >
        {mainComponent}
      </div>
    </div>


ReactDOM.render(
  <RootComponent />
  document.getElementById('app'))
