const Page = ({id, title, body, author, created_at, deletePage }) {
  return (
    <li>
    <hi>{ title }</hi>
    <h3> { author }</h3>
    <p>{ body }</p>
    <p>
    Created: { create_at }
    </p>
    <button onClick={() => deletePage(id)}>
    Delete
    </button>
    </li>
  )
}

export default Page;