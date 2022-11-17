package domain

import (
	"github.com/DaniilShd/BlackWallGroup/dto"
)

type ClientRepository interface {
	SaveTransaction(t dto.ClientRequest) (*dto.ClientResponse, error)
	GetHistory(id string) (*dto.ClientHistoryTransaction, error)
}
