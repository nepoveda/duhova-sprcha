React    = require('react')
{ListGroup} = require('react-bootstrap')

TerapyScreen = ->
  <div className="pages">
    <h1> TERAPIE PASTELKOU </h1>
    <h2> Co je to? </h2>
    <p> Terapie pastelkou, automatická kresba nebo intuitivní malování. Ať to nazveme

jakkoliv, jedná se vlastně o druh psychoterapie, napojení a pomoci malovanému

člověku, s cílem být opět plnohodnotně šťastný, vyrovnaný a určit si ten správný

směr. </p>
    <h2> V čem mi můžete pomoci? </h2>
    <ListGroup>
    Pomoc může probíhat na mnoha úrovních:
      <li> Pokud se tzv. „nemůžete pohnout z místa“, Váš život ustrnul v jednom bodě. </li>
      <li> Máte zdravotní potíže, ale lékaři tvrdí, že jste zdraví. (např. dušnost, motání hlavy,
      nepříjemné pocity v břiše typu „maturita“, návaly strachu a paniky…) </li>
      <li> Chce se Vám „bezdůvodně“ plakat a jste unavení. </li>
      <li> Máte stavy úzkosti? </li>
      <li> Máte bloky, špatné vzpomínky či dokonce fobie. </li>
      <li> Nerozumíte svým dětem. </li>
      <li> Rádi byste pomohli svým dětem a nevíte jak na to. </li>
      <li> Nebo jste jen zvědaví? </li>
    </ListGroup>
  <h2> Ceník</h2>
  <p>1 hod/1200,- Kč… každá další započatá hodina 500,-Kč </p>

  </div>

module.exports = { TerapyScreen }
