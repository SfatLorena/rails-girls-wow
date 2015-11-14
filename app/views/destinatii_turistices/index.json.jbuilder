json.array!(@destinatii_turistices) do |destinatii_turistice|
  json.extract! destinatii_turistice, :id, :oras, :obiectiv, :descriete
  json.url destinatii_turistice_url(destinatii_turistice, format: :json)
end
