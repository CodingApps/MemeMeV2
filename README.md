<h1 align="center"> MemeMe v2 </h1> <br>

<h4 align="center">Image editng app allowing you to add text for a meme.</h4> <br>
 

## Intro

This project allows you to select an image from your album, add text to it and save it as meme. Saved memes can then be viewed in a TableView or CollecitonView.

<p align="center">
  <img alt="onthemap" title="onthemap" src="screenshots/mmv2.gif" width=300>
</p>
<br>

## Functions 

* Select image for adding text to and then save as meme.
* Display memes as a TableView or CollectionView.   
* Also allow cameera to take picture for meme.
<br>

## Loading different screens from the TableView

The TableView also allowed an image to be brought back up, and it was interesting to see how a variety of views could be loaded onto the screen. 

``` swift
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        
        let detailController = self.storyboard!.instantiateViewController(withIdentifier: "MemeDetailController") as! MemeDetailController
        
        detailController.meme = (UIApplication.shared.delegate as! AppDelegate).myMemes[(indexPath as NSIndexPath).row]
        
        self.navigationController!.pushViewController(detailController, animated: true)
    }
```
<br>

## Article Tips

Some good articles for tips : <br>
* <a href="https://www.yudiz.com/working-with-unwind-segues-in-swift" target="_blank">Working with Segue unwinds in Swift</a><br>
* <a href="https://blog.supereasyapps.com/30-auto-layout-best-practices/#layout-ui-for-one-iphone" target="_blank">30 Auto Layout Best Practices</a>
