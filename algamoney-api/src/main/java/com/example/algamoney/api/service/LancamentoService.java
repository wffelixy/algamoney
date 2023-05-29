package com.example.algamoney.api.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.algamoney.api.model.Lancamento;
import com.example.algamoney.api.model.Pessoa;
import com.example.algamoney.api.repository.LancamentoRepository;
import com.example.algamoney.api.repository.PessoaRepository;
import com.example.algamoney.api.service.exception.PessoaInexistenteOuInativaException;

import jakarta.validation.Valid;

@Service
public class LancamentoService {

	@Autowired
	private PessoaRepository pessoaRepository;
	
	@Autowired
	private LancamentoRepository lacamentoRepository;
	
	public Lancamento salvar(@Valid Lancamento lancamento) {
		Optional<Pessoa> pessoa = pessoaRepository.findById(lancamento.getPessoa().getCodigo());
		if(pessoa == null ||  pessoa.isEmpty() || pessoa.get() == null ||  pessoa.get().isInativo()) {
			throw new PessoaInexistenteOuInativaException();	
		}
		
		return lacamentoRepository.save(lancamento);
	}

}
