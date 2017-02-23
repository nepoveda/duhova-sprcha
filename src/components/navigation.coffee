React    = require('react')
{Glyphicon, MenuItem, Dropdown} = require('react-bootstrap')

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

module.exports = {NavigationDropdown}
