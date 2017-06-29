import React from 'react'
import ReactDOM from 'react-dom'
import PropTypes from 'prop-types'
import styled from 'styled-components'

const Container = styled.div`
  display: flex;
  align-items: center;
  justify-content: space-between;
  margin: 0 auto;
  width: 1000px;
  height: 60px;
`

const Logo = styled.h1`
  font-size: 18px;
`

const NavContainer = styled.nav`
 ul {
  display: flex;
  jastify-content: flex-end;
  list-style-type: none;
 }
 li {
  margin-left: 15px;
  font-size: 14px;
  letter-spacing: 0.5px;
  a {
    text-decoration: none;
    color: ${currentPageColor};
    &:hover {
      opacity: .5;
    }
  }
 }
`

const currentPageColor = ({ current_page }) => {
	if ( current_page === 'home') return 'black';
	else if ( current_page === 'admin') return 'white';
}

const Nav = ({current_page}) => (
  <NavContainer current_page={current_page} >
    <ul>
      <li>
        <a href="#">EXHIBITION</a>
      </li>
      <li>
        <a href="#">ARTISTS</a>
      </li>
      <li>
        <a href="#">GALLERY</a>
      </li>
      <li>
        <a href="#">MAIL</a>
      </li>
      <li>
        <a href="#">NEWS</a>
      </li>
    </ul>
  </NavContainer>
)

const GlobalNav = ({ current_page }) => (
  <Container>
    <Logo>STANDING PINE</Logo>
    <Nav current_page={current_page} />
  </Container>
)

export default GlobalNav;
