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
{FrontLogo} = require('./components/front-logo')

RootComponent = React.createClass
  getInitialState: ->
    shownScreen: 'uvodni-strana'
  setScreen: (id) ->
    @setState(shownScreen: id)
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
        <FrontScreen onSetScreen={@setScreen}/>
      when 'kombinovana-terapie'
        <CombinatedTerapy />
    <div className={@state.shownScreen}>
      <NavigationDropdown onSetScreen={@setScreen} />

      <div className="container" >
        {if @state.shownScreen == 'uvodni-strana'
          <FrontLogo />
        else
          <Logo onSetScreen={@setScreen}/>}
      {mainComponent}
      </div>
    </div>


ReactDOM.render(
  <RootComponent />
  document.getElementById('app'))
