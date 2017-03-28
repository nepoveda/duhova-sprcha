React    = require('react')
{Grid, Row, Col, Thumbnail} = require('react-bootstrap')

FrontScreen = (props) ->
  <div className="frontPage">
    <h1 className="frontHeader">
      U nás najdeš cestu k sobě
    </h1>
    <div className="pages">
      <Grid>
        <Row className="row-centered">
<<<<<<< HEAD
          <Col xs={5} md={3} className="col-centered">
            <Thumbnail src="/assets/images/terapie-pastelkou.png" alt="terapie-pastelkou" onClick={->props.onSetScreen('terapie-pastelkou')} />
          </Col>
          <Col xs={5} md={3} className="col-centered">
            <Thumbnail src="/assets/images/masaze.png" alt="masaze" onClick={->props.onSetScreen('masaze')} />
          </Col>
          <Col xs={5} md={3} className="col-centered">
            <Thumbnail src="/assets/images/energeticke-cisteni-prostor.png" alt="energeticke-cisteni-prostor" onClick={->props.onSetScreen('energeticke-cisteni-prostor')} />
          </Col>
        </Row>
        <Row className="row-centered">
            <Col xs={5} md={3} className="col-centered">
              <Thumbnail src="/assets/images/kombinovana-terapie.png" alt="kombinovana-terapie" onClick={->props.onSetScreen('kombinovana-terapie')} />
            </Col>
            <Col xs={5} md={3} className="col-centered">
              <Thumbnail src="/assets/images/kontakt.png" alt="kontakt" onClick={->props.onSetScreen('kontakt')} />
=======
          <Col xs={6} md={3} className="col-centered">
            <Thumbnail src="./assets/images/terapie-pastelkou.png" alt="terapie-pastelkou" onClick={->props.onSetScreen('terapie-pastelkou')} />
          </Col>
          <Col xs={6} md={3} className="col-centered">
            <Thumbnail src="./assets/images/masaze.png" alt="masaze" onClick={->props.onSetScreen('masaze')} />
          </Col>
          <Col xs={6} md={3} className="col-centered">
            <Thumbnail src="./assets/images/energeticke-cisteni-prostor.png" alt="energeticke-cisteni-prostor" onClick={->props.onSetScreen('energeticke-cisteni-prostor')} />
          </Col>
        </Row>
        <Row className="row-centered">
            <Col xs={6} md={3} className="col-centered">
              <Thumbnail src="./assets/images/kombinovana-terapie.png" alt="kombinovana-terapie" onClick={->props.onSetScreen('kombinovana-terapie')} />
            </Col>
            <Col xs={6} md={3} className="col-centered">
              <Thumbnail src="./assets/images/kontakt.png" alt="kontakt" onClick={->props.onSetScreen('kontakt')} />
>>>>>>> 19ca77a5376cc4d7f0908dceaab9a57eadbaf5d9
            </Col>
        </Row>
      </Grid>
    </div>
    </div>
module.exports = {FrontScreen}
