import { useEffect, useState } from 'react';
import axios from 'axios';
import Page from './components/pages/Page'
import PageNew from './components/pages/PageNew';
import Navbar from './components/pages/shared/Navbar';
import Home from './components/shared/Home';
import About from './components/shared/About';
const App = () => {
  const [pages, setPages] = useState([])

  useEffect( () => {
    axios.get('/api/pages')
    .then( res => setPages(res.data))
    .catch( err => console.log(err))
  }, [])
  const addPage = (page) => {
    axios.post('/api/pages', { page })
    .then( res +> setPages([...pages, res.data]))
  }

  const deletePage = (id) => {
    axios.delete(`/api/pages/${id}`)
    .then( res => setPages(pages.filter( p => p.id !== id)))
  .catch( err => console.log(err))
  }

  return (
    <>
    <Navbar />
    <Home />
    <About />
    <h1>All Pages</h1>
    <PageNew addPage={addPage} />
    <ul>
      {
        pages.map( p => (
          <Page key={p.id} {...p} deletePage={deletePage} />
          //<Page key={p.id} title={p.title} author={p.author} body={p.body}
        ))
      }
    </ul>
    
    </>
  )
}

export default App;
