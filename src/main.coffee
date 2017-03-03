React    = require('react')
ReactDOM = require('react-dom')

createHistory = require('history').createBrowserHistory
history = createHistory()

{NavigationDropdown} =require('./components/navigation')
{ContactScreen} = require('./components/contact')
{TerapyScreen}  = require('./components/terapy')
{MassageScreen} = require('./components/massage')
{EnergyScreen}  = require('./components/energy')
{FrontScreen} = require('./components/front')
{CombinatedTerapy} = require('./components/combinated.coffee')
{Logo} = require('./components/logo')

RootComponent = React.createClass
  getInitialState: ->
    { pathname } = window.location
    shownScreen: pathname[1..] || 'uvodni-strana'
  setScreen: (id) ->
    @setState(shownScreen: id)
    location = window.location
    location.pathname = '/' + id
    history.push(location)
  render: ->
    mainComponent = switch @state.shownScreen
      when 'kontakt'
        <ContactScreen />
      when 'terapie-pastelkou'
        <TerapyScreen />
      when 'masaze'
        <MassageScreen />
      when 'energeticke-cisteni-prostor'
        <EnergyScreen />
      when 'uvodni-strana'
        <FrontScreen />
      when 'kombinovana-terapie'
        <CombinatedTerapy />
    <div className={@state.shownScreen}>
      <NavigationDropdown onSetScreen={@setScreen} />

      <div className="container" >
          <Logo onSetScreen={@setScreen}/>
      {mainComponent}
      </div>
    </div>


ReactDOM.render(
  <RootComponent />
  document.getElementById('app'))
