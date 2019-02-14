struct JSON {
    
    static func getData(from filename : String) -> [String : AnyObject]? {
        guard let path = Bundle.main.path(forResource: filename, ofType: "json") else { return nil }
        
        do {
            let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
            let jsonResult = try JSONSerialization.jsonObject(with: data, options: .mutableLeaves)
            guard let JSON = jsonResult as? Dictionary<String, AnyObject> else {
                return nil
            }
            return JSON
        } catch {
            return nil
        }
    }
    
}