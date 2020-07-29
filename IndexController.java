package jp.co.internous.ocean.controller;

import java.util.List;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import jp.co.internous.ocean.model.domain.MstCategory;
import jp.co.internous.ocean.model.domain.MstProduct;
import jp.co.internous.ocean.model.form.SearchForm;
import jp.co.internous.ocean.model.mapper.MstCategoryMapper;
import jp.co.internous.ocean.model.mapper.MstProductMapper;
import jp.co.internous.ocean.model.session.LoginSession;

@Controller
@RequestMapping("/ocean")
public class IndexController {

	@Autowired
	MstProductMapper mstProductMapper;
	
	@Autowired
	MstCategoryMapper mstCategoryMapper;
	
	@Autowired
	LoginSession loginSession;
	
	@RequestMapping("/")
	public String index(Model m) {
		//未ログインかつ仮ユーザーIDがない時仮ユーザーID発行
		if (!loginSession.getLogined() && loginSession.getTmpUserId() == 0) {
			Random rnd = new Random();
			int tmpUserId = rnd.nextInt(899999999) - 999999999;
			loginSession.setTmpUserId(tmpUserId);
		}
		
		m.addAttribute("loginSession", loginSession);
		
		//トップ画面に表示させる為に全ての商品情報を取得
		List<MstProduct> products = mstProductMapper.findAll();
		m.addAttribute("products", products);	
		
		//カテゴリドロップダウン表示させる為にカテゴリ情報取得
		List<MstCategory> categories = mstCategoryMapper.findAll();
		m.addAttribute("categories", categories);
		
		return "index";
	}

	@RequestMapping(value="/searchitem", method=RequestMethod.GET)
	public String serchitem(SearchForm searchForm, Model m) {
		//検索ワード、カテゴリを画面から取得し、変数searchWord,searchCategoryIdに代入
		String searchWord = searchForm.getProductName();
		int searchCategoryId = searchForm.getCategoryId();
		
		//検索ワードをスペースで区切って配列にする
		String[] searchWords = searchWord.split(" ");
				
		List<MstProduct> searchItem = null;
		//検索条件の分岐を制御
		if(searchWords.length != 0) {
			if (searchCategoryId != 0) {
				searchItem = mstProductMapper.findByProductNameAndCategoryId(searchWords, searchCategoryId);
			} else {
				searchItem = mstProductMapper.findByProductName(searchWords);
			}
		} else {
			if (searchCategoryId != 0) {
				searchItem = mstProductMapper.findByCategoryId(searchCategoryId);
			} else {
				searchItem = mstProductMapper.findAll();
			}
		}
		
		m.addAttribute("products", searchItem);
		m.addAttribute("searchWords", searchWord);
		m.addAttribute("searchCategoryId", searchCategoryId);
		m.addAttribute("loginSession", loginSession);
		
		//カテゴリドロップダウンを表示させる為にカテゴリ情報取得
		List<MstCategory> categories = mstCategoryMapper.findAll();
		m.addAttribute("categories", categories);
		
		return "index";
	}
}