import React from 'react'
import ReactDOM from 'react-dom'
import PropTypes from 'prop-types'
import styled from 'styled-components'
import MainImage from '../components/main_image'
import GlobalNav from '../components/global_nav'

const Container = styled.div`
  width: 100%;
  font-size: 10px;
  margin: 0 auto;
`

const Header = props => (
  <Container>
    <MainImage image_url={props.main_image.image_url} image_name={props.main_image.image_file_name} />
    <GlobalNav current_page={props.current_page} />
  </Container>
);

document.addEventListener('DOMContentLoaded', () => {
  const node = document.getElementById('main-image')
  const data = JSON.parse(node.getAttribute('data'))

  ReactDOM.render(<Header {...data} />, node)
});
