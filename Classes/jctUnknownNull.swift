 
 
 
 
 
 

import Foundation

extension strngAccidentMean : UITableViewDelegate,UITableViewDataSource,UIPickerViewDelegate,UIPickerViewDataSource {
    
    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return lstExistEncode.count
    }
    
    public func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return lstExistEncode[row]
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var skeletnCaretLike:mrginCompanyFace? = tableView.dequeueReusableCell(withIdentifier: "mrginCompanyFace") as? mrginCompanyFace
        if skeletnCaretLike == nil {
            skeletnCaretLike =  mrginCompanyFace(style: .subtitle, reuseIdentifier: "mrginCompanyFace") as mrginCompanyFace
        }
        skeletnCaretLike?.replceLogicWait = lstExistEncode[indexPath.row]
        skeletnCaretLike?.derelctAlphaCombine()
        return skeletnCaretLike ?? UITableViewCell()
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lstExistEncode.count
    }
    
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.dismiss(animated: false)
        if let plTaskSelect = plTaskSelect {
            plTaskSelect(lstExistEncode[indexPath.row])
        }
    }
    
    public func pickerView(_ pickerView: UIPickerView, attributedTitleForRow row: Int, forComponent component: Int) -> NSAttributedString? {
        return NSAttributedString(string: self.lstExistEncode[row],attributes: [.font:UIFont.systemFont(ofSize: 16),.foregroundColor:UIColor.white])
    }
}
