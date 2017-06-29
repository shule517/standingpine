import React from 'react'
import ReactDOM from 'react-dom'
import PropTypes from 'prop-types'
import styled from 'styled-components'

const Container = styled.div`
`

const Cover = styled.div`
  position: relative;
  height: 450px;
  overflow: hidden;
  img {
    width: 100%;
    transform: translate(0, -25%);
  }
`

const Logo = styled.div`
  border: 4px solid #000000;
  width: 315px;
  position: absolute;
  top: 230px;
  right: 60px;
  padding: 15px;
  font-size: 20px;
  letter-spacing: 0.5px;
  line-height: 0.6;
`

const MainImage = ({image_url, image_name}) => (
  <Container>
    <Cover>
      <img src={image_url} alt={image_name} />
    </Cover>
    <Logo>
      STANDING PINE
    </Logo>
  </Container>
)

export default MainImage;
