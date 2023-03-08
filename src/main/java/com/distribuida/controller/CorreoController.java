package com.distribuida.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.distribuida.entities.Usuario;
import com.distribuida.service.UsuarioService;

import EnvioCorreo.mail;

@Controller
@RequestMapping("/envio")
public class CorreoController {
	
		@Autowired
		private UsuarioService usuarioService;
		
		private mail Envio = new mail ();
		
		@RequestMapping
		public String findAll(Model model) {
		List<Usuario> usuarios = usuarioService.findAll();
		
		model.addAttribute("usuarios",usuarios);
		
		return "Mensaje";
		
		}
		
//		@GetMapping("/findOne")
//		public String findOne(@RequestParam("idUsuario")int id, @RequestParam("opcion") int opcion, Model model) {
//			
//			Usuario usuario = usuarioService.findOne(id);
//			if(opcion==1) {
//				model.addAttribute("usuario",usuario);
//				return "agregar-usuarios";
//				
//				
//			}else {
//				model.addAttribute("usuario",usuario);
//				return "eliminar-usuarios";
//			}
//		}
		
		
		@PostMapping("/enviocorreo")
		public String enviocorreo(@ModelAttribute("usuario") Usuario usuario, BindingResult bindingResult) {
			if(bindingResult.hasErrors()) { 
				Envio.envioMail(usuario);
				return "listar-usuarios";
			} else {
				Envio.envioMail(usuario);
				return "redirect:/usuarios";
			}
		}
			
			
		
		
		
		
//		
//		@RequestMapping("/del")
//		public String frmDel(@RequestParam("idUsuario")int id) {
//			usuarioService.del(id);
//			return "redirect:/usuarios";
//		}
		
//		@RequestMapping("/frmAdd")
//		public String frmAdd(Model model) {
//			Usuario usuario = new Usuario();
//			model.addAttribute("usuario", usuario);
//			return "agregar-usuarios";
//		}
		
		
		@RequestMapping("/frmAdd")
		public String frmAdd(Model model) {
			Usuario usuario = new Usuario();
			model.addAttribute("usuario", usuario);
			return "Envio Correo";
		}
		
	
		
		

		@InitBinder
			public void miBinder(WebDataBinder binder) {
			StringTrimmerEditor trimmerEditor = new StringTrimmerEditor(true);
			binder.registerCustomEditor(String.class, trimmerEditor);  
		}
	}



