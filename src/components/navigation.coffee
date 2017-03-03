React    = require('react')
{Glyphicon, MenuItem, Dropdown} = require('react-bootstrap')

NavigationDropdown = (props) ->
  <div id="navigation">
    <Dropdown id="NavigationDropdown">
      <Dropdown.Toggle>
        <Glyphicon glyph="th" />
      </Dropdown.Toggle>
      <Dropdown.Menu>
        <MenuItem onClick={->props.onSetScreen('uvodni-strana')}> Úvod </MenuItem>
        <MenuItem onClick={->props.onSetScreen('terapie-pastelkou')}>Terapie pastelkou</MenuItem>
        <MenuItem onClick={->props.onSetScreen('masaze')}>Masáže</MenuItem>
        <MenuItem onClick={->props.onSetScreen('energeticke-cisteni-prostor')}>Energetické čištění prostor</MenuItem>
        <MenuItem onClick={->props.onSetScreen('kombinovana-terapie')}> Kombinovaná terapie </MenuItem>
        <MenuItem onClick={->props.onSetScreen('kontakt')}>Kontakt</MenuItem>
      </Dropdown.Menu>
    </Dropdown>
    </div>

module.exports = {NavigationDropdown}
