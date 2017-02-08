$        = require('jquery')
React    = require('react')
ReactDOM = require('react-dom')

RootComponent = React.createClass
  render: ->
    <div>
      <h1> Nazdar </h1>
    </div>

ReactDOM.render(
  <RootComponent />
  document.getElementById('app'))
