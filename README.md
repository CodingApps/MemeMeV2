<h1 align="center"> MemeMe v2 </h1> <br>

<h4 align="center">Image editng app allowing you to add text for a meme.</h4> <br>
 

## Intro

This project allows you to select an image from your album, add text to it and save it as meme. Saved memes can then be viewed in a TableView or CollecitonView.

<p align="center">
  <img alt="onthemap" title="onthemap" src="screenshots/mmv2.gif" width=300>
</p>
<br>

## Functions 

* Select iamge for adding text to and then save as meme.
* Display memes as a TableView or CollectionView.   
* Also allow cameera to take picture for meme.
<br>

## Methods on the Main Thread

This included using images from the devices storage, so it was interesting implementing methods for pulling up the phone album.

``` swift
    @IBAction func pickAnImageFromAlbum(_ sender: AnyObject) {
        self.showImagePicker(sourceType: .photoLibrary)
        
    private func showImagePicker(sourceType: UIImagePickerControllerSourceType) {
        let imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        imagePicker.sourceType = sourceType
        present(imagePicker, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any])
    {
        if let image = info[UIImagePickerControllerOriginalImage] as? UIImage { imagePickView.image = image }
        self.dismiss(animated: true, completion: nil)
        
    }
```
<br>

## Article Tips

Some good articles for tips : <br>
* <a href="https://www.yudiz.com/working-with-unwind-segues-in-swift" target="_blank">Working with Segue unwinds in Swift</a><br>
* <a href="https://blog.supereasyapps.com/30-auto-layout-best-practices/#layout-ui-for-one-iphone" target="_blank">30 Auto Layout Best Practices</a>
