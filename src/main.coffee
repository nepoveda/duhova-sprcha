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
{Logo} = require('./components/logo')

RootComponent = React.createClass
  getInitialState: ->
    { pathname } = window.location
    shownScreen: pathname[1..] || 'Front'
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
      when 'Front'
        <FrontScreen />
    <div className="background">
      <NavigationDropdown onSetScreen={@setScreen} />

      <div className="container" >
        {if @state.shownScreen != 'Front'
          <Logo onSetScreen={@setScreen}/>}
      {mainComponent}
      </div>
    </div>


ReactDOM.render(
  <RootComponent />
  document.getElementById('app'))
