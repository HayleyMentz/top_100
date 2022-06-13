const Page = ({id, title, body, author, created_at}) {
  return (
    <li>
    <hi>{ title }</hi>
    <h3> { author }</h3>
    <p>{ body }</p>
    <p>
    Created: { create_at }
    </p>
    </li>
  )
}

export default Page;