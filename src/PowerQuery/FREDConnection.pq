let
    Source = (series_id as text) =>
    let
        Source = Json.Document(Web.Contents("https://api.stlouisfed.org/fred/series/observations", [
            Query=[
                series_id=series_id,
                api_key="YOUR_API_KEY",
                file_type="json",
                observation_start="2020-01-01"
            ]
        ])),
        data = Source[observations]
    in
        data
in
    Source