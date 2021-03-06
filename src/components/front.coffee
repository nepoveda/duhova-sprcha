React    = require('react')
{Grid, Row, Col, Thumbnail} = require('react-bootstrap')

FrontScreen = (props) ->
  <div className="frontPage">
    <h1 className="frontHeader">
      "U nás najdeš cestu k sobě"
    </h1>
      <Grid className="pages">
        <Row className="row-centered">
          <Col xs={6} md={3} className="col-centered">
            <Thumbnail src="/assets/images/bublina-terapie-pastelkou.png" alt="terapie-pastelkou" onClick={->props.onSetScreen('terapie-pastelkou')} />
            <Thumbnail className="front-text" src="/assets/images/text-terapie-pastelkou.png" alt="terapie-pastelkou" onClick={->props.onSetScreen('terapie-pastelkou')} />
          </Col>
          <Col xs={6} md={3} className="col-centered">
            <Thumbnail className="front-image" src="/assets/images/bublina-masaze.png" alt="masaze" onClick={->props.onSetScreen('masaze')} />
            <Thumbnail src="/assets/images/text-masaze.png" alt="masaze" onClick={->props.onSetScreen('masaze')} />
          </Col>
          <Col xs={6} md={3} className="col-centered">
            <Thumbnail src="/assets/images/bublina-energeticke-cisteni-prostor.png" alt="energeticke-cisteni-prostor" onClick={->props.onSetScreen('energeticke-cisteni-prostor')} />
            <Thumbnail className="front-text" src="/assets/images/text-energeticke-cisteni-prostor.png" alt="energeticke-cisteni-prostor" onClick={->props.onSetScreen('energeticke-cisteni-prostor')} />
          </Col>
        </Row>
        <Row className="row-centered">
            <Col xs={6} md={3} className="col-centered">
              <Thumbnail src="/assets/images/bublina-kombinovana-terapie.png" alt="kombinovana-terapie" onClick={->props.onSetScreen('kombinovana-terapie')} />
              <Thumbnail src="/assets/images/text-kombinovana-terapie.png" alt="kombinovana-terapie" onClick={->props.onSetScreen('kombinovana-terapie')} />
            </Col>
            <Col xs={6} md={3} className="col-centered">
              <Thumbnail src="/assets/images/bublina-kontakt.png" alt="kontakt" onClick={->props.onSetScreen('kontakt')} />
              <Thumbnail className="front-text" src="/assets/images/text-kontakt.png" alt="kontakt" onClick={->props.onSetScreen('kontakt')} />
            </Col>
        </Row>
      </Grid>
    </div>
module.exports = {FrontScreen}
