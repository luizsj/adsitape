module PagesHelper

  def topo_adsitape
      if !(@title.nil?) && !(@title == 'Home')
        raw("<h1> adsitape.com </h1>
              <hr />
              <h2> #{@title} </h2>")
      end
  end 
  
  def helper_logo_infra(name, imagem, texto_alt, endereco, texto_link)
    imagem = "infraestrutura/#{imagem}"
    name = image_tag(imagem, 
                    :alt => texto_alt,
                    :class => 'logo_infra')
    link_imagem = link_to name, endereco
    link_texto = link_to texto_link, endereco
    
    raw("#{link_imagem} <br> #{link_texto}")
  end
  
  def helper_imagem_historico(arquivo)
    imagem = "historico/#{arquivo}"
    texto = image_tag(imagem, :alt => arquivo,
                              :class => 'img_historico')
    raw(texto)
  end
  
  def helper_tutorial(titulo, descricao, autor, data,
                      versao1, arquivo1, tamanho1,
                      versao2, arquivo2, tamanho2)
    arquivo1 = "tutoriais/#{arquivo1}"
    link1 = link_to versao1, arquivo1
    link1 = "#{link1}, #{tamanho1}"
    
    arquivo2 = "tutoriais/#{arquivo2}"
    link2 = link_to versao2, arquivo2
    link2 = "#{link2}, #{tamanho2}"
  
    raw("<table class=\"tab_tutorial\">
            <tr>
                <td class=\"tutorial\">
                    #{titulo}<br />
                    #{descricao}
                </td>
            </tr>
            <tr>
                <td>
                    Autor: #{autor}, publicado em #{data},
                    versão #{link1}, versão #{link2} 
                </td>
            </tr>
        </table>
        ")
  end
end
